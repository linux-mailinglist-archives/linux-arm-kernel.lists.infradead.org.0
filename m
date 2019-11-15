Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0360AFE02C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 15:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZKacGlLDvqdRHc8PRKH/n0mgarGKq1nbb2Nx7E95+hA=; b=gXBrPOZRpOaF+xyy1uAE5vJu6
	r7TYuC0aemDr/FM29LGRr86clQ8DX28wxUrQahN8h0TEXa0+AjIujROjq9vpRxS7Efu6hmtLu/eXD
	MXpDkcTEh/gM/EmzJlPwuH/zPALh7KAYA9fpen3Hzi3KhVXFvUD1w0z5g/Sd+lBv7rHWBTUV6wcdD
	n+42YRIX1HXpfmTj2r3nlNLzxLKPb0H+nHT7Ecx71XkTd/hdR+bd0G2V+RC3FXpNk2zduOlTXdm9b
	JkeemcE2CVVZKC3Sg0IcRRly9tvAOu1Q5odtN8yKf561vRf4v4Y5cLZdEd18gNxw5VLaCVqlEXxEJ
	YfN0WdIXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVcfl-0002uo-UF; Fri, 15 Nov 2019 14:34:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVcfb-0002uF-Nh
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 14:33:56 +0000
Received: from [192.168.1.20] (cpe-24-28-70-126.austin.res.rr.com
 [24.28.70.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E6E620733;
 Fri, 15 Nov 2019 14:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573828435;
 bh=mF87Nl6gED2r2qJHxN4WWU1Jb6PLM4yh2d+dwZW5Hk8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Vvc8P1N2l/zeirxvFEhap3H1A3jDhl2uKzyj33rEKW2rwdgj5T8pzOsDy4fw1UWub
 XOWWlOSXPH1wP5r87NRbpax/A2wzVHEpPawa5nMHZ+KwvkJODp0QrvuDT4Y1ONRqcu
 eG/BLYr6FtmyUe4Co3Y8nzyrcQUTocfk9sbUsS/M=
Subject: Re: [PATCH v4 45/47] net/wan/fsl_ucc_hdlc: reject muram offsets above
 64K
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-46-linux@rasmusvillemoes.dk>
 <CAOZdJXUibQ6RM8O4CfkYBdGsg+LMcE2ZoZEQ4txn2yvquUWwCA@mail.gmail.com>
 <79101f00-e3ff-9dd0-7a05-760f8be1ff69@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Message-ID: <3db19b28-90a4-f204-07b3-517cfd44010b@kernel.org>
Date: Fri, 15 Nov 2019 08:33:52 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <79101f00-e3ff-9dd0-7a05-760f8be1ff69@rasmusvillemoes.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_063355_789627_2B30D65C 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, netdev <netdev@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/15/19 1:44 AM, Rasmus Villemoes wrote:
> I can change it, sure, but it's a matter of taste. To me the above asks
> "does the value change when it is truncated to a u16" which makes
> perfect sense when the value is next used with iowrite16be(). Using a
> comparison to U16_MAX takes more brain cycles for me, because I have to
> think whether it should be > or >=, and are there some
> signedness/integer promotion business interfering with that test.

Ok.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
