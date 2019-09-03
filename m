Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F10BA6AC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZXa7OCKDkEgcgEY9GnlGKnXvWtscfxjqz6GCPljvA3U=; b=EzxiS6/+zTAMVY+lrScy6DtPR
	9bDm7ftZHrvHEZW5lIy67bW2fLg0xk0mEqR3LVJurVXornUIqww19UC3v2cbdnHhKykbtZZA2O7Vc
	V229oIvbU9hTYj3oEhazFGxUALyeSC4UrX77doeDOQazbNJPKHjiToDBDR0imQoUxYDq/Q3TG+sYO
	WZSxFvHS+rTKggMpVActJmV53NTbaZHp9Wcr2SM4MrCEUk5lhpEm2dHBw4apvZTmtKch4kf/FxWyG
	zDJHBnqc7SyYyQOB8g820SOqypTPlceMYYl1YaCP9Tq3ncFaDQ1wXAF04Q3ydhEqUGY9xAKFgyFC8
	qOHDB1FoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59RB-0003IJ-NL; Tue, 03 Sep 2019 14:05:37 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59Qw-0003CO-Ax
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:05:24 +0000
Received: from sslproxy05.your-server.de ([78.46.172.2])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1i59Qf-0004U9-TM; Tue, 03 Sep 2019 16:05:05 +0200
Received: from [178.197.249.19] (helo=pc-63.home)
 by sslproxy05.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1i59Qf-000CjB-Mh; Tue, 03 Sep 2019 16:05:05 +0200
Subject: Re: [PATCH bpf-next] arm64: bpf: optimize modulo operation
To: jerinj@marvell.com, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, Zi Shen Lim <zlim.lnx@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, "open list:BPF JIT for ARM64"
 <bpf@vger.kernel.org>, "moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20190902061448.28252-1-jerinj@marvell.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <4da4bb59-5578-6981-55b7-5dbc4f0a8254@iogearbox.net>
Date: Tue, 3 Sep 2019 16:05:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190902061448.28252-1-jerinj@marvell.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25561/Tue Sep  3 10:24:26 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_070522_373932_DAD7FF6E 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [213.133.104.62 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/2/19 8:14 AM, jerinj@marvell.com wrote:
> From: Jerin Jacob <jerinj@marvell.com>
> 
> Optimize modulo operation instruction generation by
> using single MSUB instruction vs MUL followed by SUB
> instruction scheme.
> 
> Signed-off-by: Jerin Jacob <jerinj@marvell.com>

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
