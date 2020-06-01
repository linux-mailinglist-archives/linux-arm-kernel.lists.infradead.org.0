Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EBB1EA6A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 17:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54ueXZ87bdfCvPxmEhpnHg7TMSfAtGEkJ45nruJfydI=; b=CgM29ZbmwQ/yLP
	XDrfRcDaT/feToLxFtHfOyiezzBSNcICwkNfk89C1iIqvuU/yVRUVmxfg83KLPNcVHyqHbFL21fXp
	VtPhA/14z/DGlXFZr3NOalACRkdD2y8EzM8JZ3ycNoxQoXl1AuIuhyjBkaf5IRkDs0+fJrq6CYEqt
	ivjJEU5EYDy67CCqaZ1tcViKTqUe3MoAVsY12SXBzo5yNJo2kv41nYbWsjuEbVByR8mee5OlLUCMd
	ejivaCKgy4ksPrzQby9ZtNFPCxYI1TN+d1dWlkeouJUEcAJETjvJkP/YAdITSy+L73yUjQMoe1Gch
	dZMh68UOyDviD0ZNGD2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfm9T-00026w-79; Mon, 01 Jun 2020 15:14:59 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfm9L-00026B-LN
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 15:14:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PIZ+lVLQagv2LzCpnL+lQMbd+eEgTlAiMx0920iCwH8=; b=nb3XuYt6KaS3K6JXq4mom4OUv
 A3TZiLSUAVxInYU6nTJGb47CBbnklOEMIiFr+NDU9Ywxd7l0yBkgbvoZv+38IXLERUzeeY5G1gW4q
 0m4tT5oOe+EX/3o0hk3XhPCw9QGjNy2C10NZ+mstc4kHKgw+y3mKHUqW17S3E4gxwY7wf0smuFY0V
 435MAU8Ebyy+9cyEiZnZWAiexKALkh1wJ3KJe+UjKbXRcbPoA3MXeKay55kExTNPJfYskmhvy8U51
 TKUl+WYkhcYkE7+n/ozNKZkwRq6y532LhTz8wx/GvrHTI18cuzGIWW7YWrlcE1tjr2Dw6jnCZaqBL
 qYakL7EXw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:48060)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jfm94-0000df-3d; Mon, 01 Jun 2020 16:14:34 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jfm91-0003QH-Sw; Mon, 01 Jun 2020 16:14:31 +0100
Date: Mon, 1 Jun 2020 16:14:31 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 5/5] arm: kexec_file: load zImage or uImage, initrd and dtb
Message-ID: <20200601151431.GN1551@shell.armlinux.org.uk>
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <CGME20200601142811eucas1p1604c8e6ca06c09f1ec821ea5e1918c53@eucas1p1.samsung.com>
 <20200601142754.26139-6-l.stelmach@samsung.com>
 <20200601150745.GL1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601150745.GL1551@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_081451_762427_18725105 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ben Dooks <ben-linux@fluff.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMDQ6MDc6NDVQTSArMDEwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IGFkbWluIHdyb3RlOgo+IE9uIE1vbiwgSnVuIDAxLCAyMDIwIGF0IDA0OjI3OjU0
UE0gKzAyMDAsIMWBdWthc3ogU3RlbG1hY2ggd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0va2VybmVsL2tleGVjX3ppbWFnZS5jIGIvYXJjaC9hcm0va2VybmVsL2tleGVjX3ppbWFnZS5j
Cj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5kMDk3OTVm
YzkwNzIKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2FyY2gvYXJtL2tlcm5lbC9rZXhlY196
aW1hZ2UuYwo+ID4gQEAgLTAsMCArMSwxOTkgQEAKPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMAo+ID4gKy8qCj4gPiArICogS2V4ZWMgekltYWdlIGxvYWRlcgo+ID4gKyAq
Cj4gPiArICogQ29weXJpZ2h0IChDKSAyMDIwIFNhbXN1bmcgRWxlY3Ryb25pY3MKPiA+ICsgKiBB
dXRob3I6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Cj4gCj4gUGxl
YXNlIGNyZWRpdCBtZSBhcyBwYXJ0IGF1dGhvciBvZiB0aGlzIC0geW91IGhhdmUgdGFrZW4gc29t
ZSBvZiBteQo+IGNvZGUgZnJvbSB0aGUgdXNlcnNwYWNlIGtleGVjIHRvb2wgKHN1Y2ggYXMgdGhl
IGNvbnRlbnRzIG9mCj4gZmluZF9leHRlbnNpb25fdGFnKCkpIGFuZCBjb3BpZWQgaXQgaW4gaGVy
ZSwgc28gdGhpcyBpcyBub3QgYWxsIHlvdXIKPiBvd24gd29yay4KCkl0IHdvdWxkIGFsc28gYmUg
YSB2ZXJ5IGdvb2QgaWRlYSB0byBpbmRpY2F0ZSBfd2hlcmVfIHlvdSBjb3BpZWQgc29tZQpvZiB0
aGlzIGNvZGUgZnJvbS4KCi0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxp
bnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBmb3IgMC44bSAoZXN0LiAxNzYybSkg
bGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMy4xTWJwcyBkb3duIDQyNGticHMgdXAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
