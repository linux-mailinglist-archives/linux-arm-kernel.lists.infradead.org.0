Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DC110447E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OTL5js4PPovwIqUoi7jTUSU/cnpepgfeEmVQAm8Na9U=; b=FfCk1xDZ36627CN7vAk7WzK+6
	WY/GxXU1r1WxQEjqCKt1VYEHm9EkCOKPImTPq7cEQolwYXYC9onMErRbZAAkdi412T5KswLD5C1Jh
	v8Ce32bPT0zAGKkeitksA9LW9hBilPj/da3j4WqDzGRDMK0vuOxSieUiBleDjAjblk5akeAj7uw2O
	gnCwfDGK56+W56b//K7TE5W1mv9GI4RaHmfUZWG+9O+Uw7oX83WkgUlHeY31fJ+qcJAkZqvQp3VYd
	vd61/JHyU0FY3pLs3IbFo9nrfKC5xpleE4SyvbK94DSao1OiGI/2G+3QfOi8FG9Avi8cmcPDHbwbJ
	sDzMZeuaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVvo-0002w5-3B; Wed, 20 Nov 2019 19:46:28 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVvc-0002vR-VE
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 19:46:18 +0000
Received: by mail-ed1-x542.google.com with SMTP id m13so532522edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 11:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=719bsazi0dbFes8dSA1CK4DMOVZBwF8jI2z3H6EBZoU=;
 b=enYhKFVD/qQ/yKh2BY2CWczU4JbompieZuFI33y2NFFVSbXnOSqVl+SEHTkdWN1saQ
 4mQznt4mf2OphiR/z4qQ35SZgO3lTWW3+l/kFU5g85HINRlUuVCgz5Ua0zPcEjsJO4Y3
 DeWdV4VW6qrJ7mOVXfa1pSD1gJ3jq5oPFMFyLWWHu61mXxVCNxDkhoRawPsc2sQmkbey
 MOsyxkmKzNWyjWa4q63IYKfZP3mPtO4C2AkyulH+Umi3o8k1B8TeEltDQDHrEm4jvdwk
 a1/W+NOAwVZMhooXGi9iJYOICLNsW5IeoD7+UdJhtLXJ7KtGEmas1lYExqYwV8W9rE7w
 d9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=719bsazi0dbFes8dSA1CK4DMOVZBwF8jI2z3H6EBZoU=;
 b=oiCzzmOvJuf++ePSwciDAjt8tIbPPbMGQ3bs7aio6QITGurBiCrtWWFq8/AzVpJ1gM
 CKwB8IYSZRzV4h6aYTdsYZHce3WikqpQJ+PCtDTUiA3WO+v2IELruTifuKQJeaweBsEX
 T0f9+f970ZZzxQZlRWAL1HpNVdBTpx+Voi9lTz1m0f/fkhMQuFU/jRvDR57R+c2tK3RK
 XY10OUYgbstvMlku1FO6SZaMbp9iM49PBowIm3SM2KWafhAfqWFje/hm+7yQTkC9oDJE
 1JUg1xBQuAx96CHdM2GGE/x+VqaEL6FTz9nJYhbYSdmEubp8KynWdItUTVFx07Tvzcl4
 1OrQ==
X-Gm-Message-State: APjAAAWVIx/iNZR7v+AeQ1fGxbKGg7OzCOzNa9XNATMd1OCcf6bl2MfJ
 +DmdDVRrOZLHI9DKZmt9pOXTO6HvmtUjuJRy92tVqw==
X-Google-Smtp-Source: APXvYqyGGB5Ejm+dAfU7oHFOo9IaMoTis9GuQGsrePKYkgnhdxKU0iaPnczimnWR29TkDLsiEwVXYHoZHPzaOMk4388=
X-Received: by 2002:a17:906:e88:: with SMTP id p8mr7383771ejf.15.1574279175132; 
 Wed, 20 Nov 2019 11:46:15 -0800 (PST)
MIME-Version: 1.0
References: <20191119221006.1021520-1-pasha.tatashin@soleen.com>
 <20191120164307.GA19681@lakrids.cambridge.arm.com>
 <CA+CK2bAkb7zg6ne=PzA7UrQF49J2Sa7rmyWM3Bqugfe00-36ng@mail.gmail.com>
In-Reply-To: <CA+CK2bAkb7zg6ne=PzA7UrQF49J2Sa7rmyWM3Bqugfe00-36ng@mail.gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 20 Nov 2019 14:46:03 -0500
Message-ID: <CA+CK2bCX+QGMPzhjj-UmVNb1jG8Z6WNW=L0GiVsTpGrhyqb9tA@mail.gmail.com>
Subject: Re: [PATCH] arm64: kernel: memory corruptions due non-disabled PAN
To: Mark Rutland <mark.rutland@arm.com>
Content-Type: multipart/mixed; boundary="0000000000000326770597cc6f1e"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_114617_081518_68CE1B60 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, info@metux.net,
 Vladimir Murzin <vladimir.murzin@arm.com>, steve.capper@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 alexios.zavras@intel.com, James Morse <james.morse@arm.com>,
 allison@lohutok.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--0000000000000326770597cc6f1e
Content-Type: text/plain; charset="UTF-8"

> > I see that with CONFIG_ARM64_SW_TTBR0_PAN=y, this means that we may
> > leave the stale TTBR0 value installed across a context-switch (and have
> > reproduced that locally), but I'm having some difficulty reproducing the
> > corruption that you see.
>
> I will send the full test shortly. Note, I was never able to reproduce
> it in QEMU, only on real hardware. Also, for some unknown reason after
> kexec I could not reproduce it only during first boot, so it is
> somewhat fragile, but I am sure it can be reproduced in other cases as
> well, it is just my reproducer is not tunes for that.
>

Attached is the test program that I used to reproduce memory corruption.
Test on board with Broadcom's Stingray SoC.

Without fix:
# time /tmp/repro
Corruption: pid 1474 map[0] 1488 cpu 3
Terminated

real    0m0.088s
user    0m0.004s
sys     0m0.071s

With the fix:

# time /tmp/repro
Test passed, all good
Terminated

real    1m1.286s
user    0m0.004s
sys     0m0.970s



Pasha

--0000000000000326770597cc6f1e
Content-Type: text/x-csrc; charset="US-ASCII"; name="repro.c"
Content-Disposition: attachment; filename="repro.c"
Content-Transfer-Encoding: base64
Content-ID: <f_k37p5xni0>
X-Attachment-Id: f_k37p5xni0

I2RlZmluZSBfR05VX1NPVVJDRQojaW5jbHVkZSA8bGludXgvcGVyZl9ldmVudC5oPgojaW5jbHVk
ZSA8c3lzL21tYW4uaD4KI2luY2x1ZGUgPHN5cy9zeXNpbmZvLmg+CiNpbmNsdWRlIDxzeXMvaW9j
dGwuaD4KI2luY2x1ZGUgPHN5cy9zeXNjYWxsLmg+CiNpbmNsdWRlIDxzeXMvd2FpdC5oPgojaW5j
bHVkZSA8c3RyaW5nLmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUgPHNpZ25hbC5oPgoj
aW5jbHVkZSA8c3RkaW8uaD4KI2luY2x1ZGUgPHNjaGVkLmg+CiNpbmNsdWRlIDx0aW1lLmg+CiNp
bmNsdWRlIDx1bmlzdGQuaD4KCiNkZWZpbmUgUlVOX1RJTUUJNjAKI2RlZmluZSBTSVpFCQk0MDk2
CiNkZWZpbmUgTlBST0NTCQk0MDk2CiNkZWZpbmUgTkNQVQkJZ2V0X25wcm9jc19jb25mKCkKI2Rl
ZmluZSBQQUdFTUFQX0xFTkdUSCA4CnVuc2lnbmVkIGxvbmcgZ2V0X3BhKHZvaWQgKmFkZHIpIHsK
ICAgRklMRSAqcGFnZW1hcCA9IGZvcGVuKCIvcHJvYy9zZWxmL3BhZ2VtYXAiLCAicmIiKTsKICAg
dW5zaWduZWQgbG9uZyBvZmZzZXQgPSAodW5zaWduZWQgbG9uZylhZGRyIC8gZ2V0cGFnZXNpemUo
KSAqIFBBR0VNQVBfTEVOR1RIOwogICB1bnNpZ25lZCBsb25nIHBmbiA9IDA7CgogICBpZihmc2Vl
ayhwYWdlbWFwLCAodW5zaWduZWQgbG9uZylvZmZzZXQsIFNFRUtfU0VUKSAhPSAwKSB7CiAgICAg
IGZwcmludGYoc3RkZXJyLCAiRmFpbGVkIHRvIHNlZWsgcGFnZW1hcCB0byBwcm9wZXIgbG9jYXRp
b25cbiIpOwogICAgICBleGl0KDEpOwogICB9CgogICBmcmVhZCgmcGZuLCAxLCBQQUdFTUFQX0xF
TkdUSC0xLCBwYWdlbWFwKTsKCiAgIHBmbiAmPSAweDdGRkZGRkZGRkZGRkZGOwoKICAgZmNsb3Nl
KHBhZ2VtYXApOwoKICAgcmV0dXJuIHBmbiAqIGdldHBhZ2VzaXplKCk7Cn0KCmludApkb193b3Jr
KCkKewoJaW50ICptYXAsIHBpZDsKCXVuc2lnbmVkIGxvbmcgcGE7CgoJaWYgKGZvcmsoKSkKCQll
eGl0KDApOwoKCXBpZCA9IGdldHBpZCgpOwoJbWFwID0gbW1hcChOVUxMLCBTSVpFLCBQUk9UX1JF
QUR8UFJPVF9XUklURSwgTUFQX1NIQVJFRCB8IE1BUF9BTk9OWU1PVVMsCgkJICAgLTEsIDApOwoJ
bWFwWzBdID0gcGlkOwoJc2NoZWRfeWllbGQoKTsKCWlmIChtYXBbMF0gIT0gcGlkKSB7CgkJZnBy
aW50ZihzdGRlcnIsICJDb3JydXB0aW9uOiBwaWQgJWQgbWFwWzBdICVkIGNwdSAlZFxuIiwKCQkJ
cGlkLCBtYXBbMF0sIHNjaGVkX2dldGNwdSgpKTsKCQlraWxsKDAsIFNJR1RFUk0pOwoJCXJldHVy
biAxOwoJfQoJbXVubWFwKG1hcCwgU0laRSk7CglyZXR1cm4gMDsKfQoKc3RhdGljIHZvaWQgZXZl
bnRfb3BlbihzdHJ1Y3QgcGVyZl9ldmVudF9hdHRyICpjdHhfZXZlbnRfYXR0ciwgaW50IGNvbmZp
ZykKewoJaW50IGksIGZkOwoJY3R4X2V2ZW50X2F0dHItPmNvbmZpZyA9IGNvbmZpZzsKCWZvciAo
aSA9IDA7IGkgPCBOQ1BVOyBpKyspIHsKCQlmZCA9IHN5c2NhbGwoX19OUl9wZXJmX2V2ZW50X29w
ZW4sIGN0eF9ldmVudF9hdHRyLAoJCQktMSwgaSwgLTEsIDApOwoJCWlvY3RsKGZkLCBQRVJGX0VW
RU5UX0lPQ19FTkFCTEUsIDApOwoJfQp9CgpzdGF0aWMgdm9pZApwZXJmX2V2ZW50cygpCnsKCXN0
cnVjdCBwZXJmX2V2ZW50X2F0dHIgY3R4X2V2ZW50X2F0dHI7CgoJbWVtc2V0KCZjdHhfZXZlbnRf
YXR0ciwgMCwgc2l6ZW9mKHN0cnVjdCBwZXJmX2V2ZW50X2F0dHIpKTsKCWN0eF9ldmVudF9hdHRy
LnR5cGUgPSBQRVJGX1RZUEVfU09GVFdBUkU7CgljdHhfZXZlbnRfYXR0ci5zaXplID0gc2l6ZW9m
IChzdHJ1Y3QgcGVyZl9ldmVudF9hdHRyKTsKCWN0eF9ldmVudF9hdHRyLnNhbXBsZV9wZXJpb2Qg
PSAxOwoJY3R4X2V2ZW50X2F0dHIuc2FtcGxlX3R5cGUgPSBQRVJGX1NBTVBMRV9DQUxMQ0hBSU47
CgoJZXZlbnRfb3BlbigmY3R4X2V2ZW50X2F0dHIsIFBFUkZfQ09VTlRfU1dfQ1BVX0NMT0NLKTsK
fQoKaW50Cm1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQp7CglwaWRfdCBwW05QUk9DU107Cglp
bnQgaSwgZmQ7CgljcHVfc2V0X3QgIG1hc2s7CgoJQ1BVX1pFUk8oJm1hc2spOwoJZm9yIChpID0g
MDsgaSA8IE5DUFU7IGkrKykKCQlDUFVfU0VUKGksICZtYXNrKTsKCXNjaGVkX3NldGFmZmluaXR5
KDAsIHNpemVvZihtYXNrKSwgJm1hc2spOwoKCXBlcmZfZXZlbnRzKCk7Cglmb3IgKGkgPSAwOyBp
IDwgTlBST0NTOyBpKyspIHsKCQlwW2ldID0gZm9yaygpOwoJCWlmIChwW2ldID09IDApIHsKCQkJ
Zm9yICg7OykgewoJCQkJaWYgKGRvX3dvcmsoKSkgewoJCQkJCWZwcmludGYoc3RkZXJyLCAiQnVn
IGlzIGRldGVjdGVkXG4iKTsKCQkJCQlraWxsKDAsIFNJR1RFUk0pOwoJCQkJCWV4aXQoMSk7CgkJ
CQl9CgkJCX0KCQl9Cgl9CgoJc2xlZXAoUlVOX1RJTUUpOwoJcHJpbnRmKCJUZXN0IHBhc3NlZCwg
YWxsIGdvb2RcbiIpOwoJa2lsbCgwLCBTSUdURVJNKTsKCXJldHVybiAwOwp9Cg==
--0000000000000326770597cc6f1e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--0000000000000326770597cc6f1e--

