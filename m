Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2C45FFD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 05:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuZhOgOLlARMzfpB4TKGAyYRWtpncO4ViGk/ZMzTIcU=; b=ZhWdqVswvMrGWL
	AwHIaN/oWYYQBE/ZxjXR8imTvzY6eS6VGZNIf+cPBHj3wlA15pXnIxTsm8o3LT7ktqjZM/rPoJ2oD
	wEN1jxvwg0yHimGOqrcuT8Mbfkz6ptqbeU92irXgDbVzLwz8WzQCKn7uS7kTnutUDH4ezS6sOA68N
	ZL5qfSnH8cU2z9slnSKbge7NaIRUPMZhLoB5RQE1z7zyhw1XTYPSR02I803sknqd09D00N+9Ak26E
	t4PCp7zQqAfyc7krcZmbdcgVRn4UmBZCvyBCnmVUmwne+RgfAxpH0GytlYWtIVk5Ckz7808mRYXfj
	3IAFd8hN1oSLi+u1Ro6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjF8p-00008H-S4; Fri, 05 Jul 2019 03:44:07 +0000
Received: from out30-131.freemail.mail.aliyun.com ([115.124.30.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjF8V-00006o-SF; Fri, 05 Jul 2019 03:43:49 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04394; MF=alex.shi@linux.alibaba.com; NM=1;
 PH=DS; RN=30; SR=0; TI=SMTPD_---0TW3yoR-_1562298218; 
Received: from IT-FVFX43SYHV2H.local(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0TW3yoR-_1562298218) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 05 Jul 2019 11:43:39 +0800
Subject: Re: [PATCH 18/39] docs: admin-guide: add kdump documentation into it
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
References: <cover.1561724493.git.mchehab+samsung@kernel.org>
 <654e7591c044632c06257e0f069a52c0bb993554.1561724493.git.mchehab+samsung@kernel.org>
From: Alex Shi <alex.shi@linux.alibaba.com>
Message-ID: <6911b74c-848f-0060-3db5-b5d7e8061cb5@linux.alibaba.com>
Date: Fri, 5 Jul 2019 11:43:38 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <654e7591c044632c06257e0f069a52c0bb993554.1561724493.git.mchehab+samsung@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_204348_078196_AC1D26DB 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.131 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Harry Wei <harryxiyou@gmail.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Jonathan Corbet <corbet@lwn.net>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Young <dyoung@redhat.com>, Guenter Roeck <linux@roeck-us.net>,
 linux-watchdog@vger.kernel.org, Mauro Carvalho Chehab <mchehab@infradead.org>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, Baoquan He <bhe@redhat.com>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vivek Goyal <vgoyal@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgrlnKggMjAxOS82LzI4IOS4i+WNiDg6MzAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiDlhpnpgZM6
Cj4gVGhlIEtkdW1wIGRvY3VtZW50YXRpb24gZGVzY3JpYmVzIHByb2NlZHVyZXMgd2l0aCBhZG1p
bnMgdXNlCj4gaW4gb3JkZXIgdG8gc29sdmUgaXNzdWVzIG9uIHRoZWlyIHN5c3RlbXMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK3NhbXN1bmdAa2Vy
bmVsLm9yZz4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9idWctaHVudGluZy5y
c3QgICAgICAgICAgICB8IDQgKystLQo+ICBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2luZGV4
LnJzdCAgICAgICAgICAgICAgICAgIHwgMSArCj4gIERvY3VtZW50YXRpb24veyA9PiBhZG1pbi1n
dWlkZX0va2R1bXAvZ2RibWFjcm9zLnR4dCAgfCAwCj4gIERvY3VtZW50YXRpb24veyA9PiBhZG1p
bi1ndWlkZX0va2R1bXAvaW5kZXgucnN0ICAgICAgfCAxIC0KPiAgRG9jdW1lbnRhdGlvbi97ID0+
IGFkbWluLWd1aWRlfS9rZHVtcC9rZHVtcC5yc3QgICAgICB8IDAKPiAgRG9jdW1lbnRhdGlvbi97
ID0+IGFkbWluLWd1aWRlfS9rZHVtcC92bWNvcmVpbmZvLnJzdCB8IDAKCkkgYW0gbm90IHN1cmUg
aWYgaXQncyBjb252ZW5pZW5jZSBmb3IgcGVvcGxlIHRvIGhhdmUgbW9yZSBsZXZlbHMgaW4gZG9j
cy4KCkJ1dCBJIGd1ZXNzLCBtb3ZlIGFyY2hzIGludG8gYSBEb2N1bWVudGF0aW9uL2FyY2gvIGRp
ciBzaG91bGQgYmUgZmluZS4gbGlrZSBEb2N1bWVudGF0aW9uL2FyY2gve3g4Nixhcm0sYXJtNjQs
aWE2NCxtNjhrLHMzOTAscG93ZXJwYywuLi59CgpUaGFua3MKQWxleAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
