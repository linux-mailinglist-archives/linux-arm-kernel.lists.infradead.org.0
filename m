Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC72100169
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aASufd2SXiWpAm9aKS4LljZ8ybPdmAT/++tiqInVuyE=; b=JdOZlSqTL9IqfQ
	XNxKVxO4tzNL98NQlKEFYp1506nCLnbdAz+Pz8ewYe+akGCl0PfxOVBuT51tt0qS6jx76i+CMHHoo
	2uwAxkpYs+2o7nGOgPEbBrEcljGr722kF91wTjETt4iqFaCuWQOr2YzbOGFk31jJW3kdIMVPZxyb8
	t4/Di9qfu9JSdeltQioa4V4wD9Yjnvl2fFA/QzOhdmwL527H6jafH92qxeb8O3nG62fV8QPEZ5U+I
	IdoeY28sur/Epdretkpu2+XoTGHrEd2avcGru9BJAwfHrnrQgKwhLsBavdQdlhVVJ5aTjVYnw1FXj
	DY/Y7A9BHVNBFcOoZLdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdUE-0004ME-9a; Mon, 18 Nov 2019 09:38:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdTc-000468-Ll
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:37:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id l7so18543359wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j4Tb0ttRFw3t9sd1seO7iOyRmoHtxz8QiDipOLgYhfk=;
 b=FmvVPxyz08Mlj9wlduT6LqMYYoow9iMU/3r91mZeSctNWMvPocJs0gi4Wbv6VQRbJq
 0yZ8L+WlEbsQNvNDOSjl6zY8wE6yVLgpNE0wpTEDoQk3KsN6wpHjwYRyzhBmxCPQLByK
 SYZlG9zAM1tWQ0DwN40kXtQMYfGhIa95qzNH+C5d7Y0h5KZyL3/wVb6YjkiHe4yvNz87
 C71Lqiuwx6ho3IoMjZ0SIk97dDv1gIO3rwO80MOgp4lXyb4rhP1Q+6mzmuNGfKaSacO3
 SnSQ5gSWP/wYu/9wFex2cY4Rstd6jtcbBsCiizOgKUvkqsJzB8RQgk1M45SgwpU2cWVD
 a+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j4Tb0ttRFw3t9sd1seO7iOyRmoHtxz8QiDipOLgYhfk=;
 b=HVJecutFP1Y/e7BnezCtDdhpoHywDGQ5dGI0HcFFqEdAazUkoD1dsHOJSC3cN/TCS0
 qQ2+buTjQkMWnbAGdzgHlu3/D+Xj2sG9MMSunc0mpdV0GjdtjqcEfQ0FCl+glq0rCCrP
 Cs04itZeDO0I2jrxA/Ns68vNtbKASxLZ3EXw3vA7o2J0nszxJSDWQKHvCwkXiRanS5XT
 x11is+9VoLSn/wCDryBib/wiM6SNtlRqSE5PJkMALqJQOqNJdrpitca8dHTk5i9BoHu1
 PgFFYfo8owxEZeC23/Nl99PAhFgwJOjYI1ey/6/RQ9GC2ZK3y1sEEMaWu5xuckhb6zIr
 TxNw==
X-Gm-Message-State: APjAAAUoDJHiYRp/tVwsxF5hUdjdUw7Ll7+Ebt27AqZRShILZqyP6tHp
 Helo2G+jCLklQvYN92xM14k=
X-Google-Smtp-Source: APXvYqzRNbzUzZKuGwQfxwmU1oQitUxKl4bqL0I3wGCiiaEg2GGL/i9UBvMgZ1g7TiPtHWPMnDD/+g==
X-Received: by 2002:adf:f3c5:: with SMTP id g5mr28757517wrp.5.1574069862352;
 Mon, 18 Nov 2019 01:37:42 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id w10sm19006687wmd.26.2019.11.18.01.37.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:37:41 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v5 0/8] Add support for H6 PWM
Date: Mon, 18 Nov 2019 10:37:19 +0100
Message-Id: <20191118093727.21899-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_013744_739497_09767C5F 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIGEgcmV3b3JrIG9mIEplcm5laidzIHByZXZpb3VzIHdvcmtbMV0gdGFraW5n
IGFjY291bnQgYWxsIHRoZQpwcmV2aW91cyByZW1hcmtzLgoKQmluZGluZ3MgaXMgc3RpbGwgc3Ry
aWN0IGJ1dCBwcm9iZSBpbiB0aGUgZHJpdmVyIGFyZSBub3cgb3B0aW9ubmFscy4KCklmIHNvbWVv
bmUgY291bGQgY29uZmlybSB0aGF0IHRoZSBQV00gaXMgbm90IGJyb2tlbiwgYXMgbXkgYm9hcmQK
ZG9lc24ndCBvdXRwdXQgaXQuCgpJIGRpZG4ndCBhZGQgdGhlIGFja2VkLXRhZ3MgYXMgdGhlcmUg
YXJlIGJpZyBjaGFuZ2VzLgoKVGhhbmtzLApDbMOpbWVudAoKSmVybmVqJ3MgY292ZXI6CkFsbHdp
bm5lciBINiBTb0MgaGFzIFBXTSBjb3JlIHdoaWNoIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyB0
aGF0IGZvdW5kCmluIEEyMCwgaXQncyBqdXN0IGRlcGVuZHMgb24gYWRkaXRpb25hbCBidXMgY2xv
Y2sgYW5kIHJlc2V0IGxpbmUuCgpUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIGl0IGFuZCBl
eHRlbmRzIFBXTSBkcml2ZXIgZnVuY3Rpb25hbGl0eSBpbgphIHdheSB0aGF0IGl0J3Mgbm93IHBv
c3NpYmxlIHRvIGJ5cGFzcyB3aG9sZSBjb3JlIGFuZCBvdXRwdXQgUFdNIHNvdXJjZQpjbG9jayBk
aXJlY3RseSBhcyBhIFBXTSBzaWduYWwuIFRoaXMgZnVuY3Rpb25hbGl0eSBpcyBuZWVkZWQgYnkg
QUMyMDAKY2hpcCwgd2hpY2ggaXMgYnVuZGxlZCBpbiBzYW1lIHBoeXNpY2FsIHBhY2thZ2UgYXMg
SDYgU29DLCB0byBzZXJ2ZSBhcyBhCmNsb2NrIHNvdXJjZSBvZiAyNCBNSHouIEFDMjAwIGNsb2Nr
IGlucHV0IHBpbiBpcyBib25kZWQgaW50ZXJuYWxseSB0bwp0aGUgc2Vjb25kIFBXTSBjaGFubmVs
LgoKSSB3b3VsZCBiZSBncmF0ZWZ1bCBpZiBhbnlvbmUgY2FuIHRlc3QgdGhpcyBwYXRjaCBzZXJp
ZXMgZm9yIGFueSBraW5kIG9mCnJlZ3Jlc3Npb24gb24gb3RoZXIgU29Dcy4KClsxXTogaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA2MTczNy8KCkNoYW5nZXMgaW4gdjU6CiAt
IE1vdmUgYnlwYXNzIGNhbGN1bGF0aW9uIHRvIHB3bV9jYWxjdWxhdGUKIC0gU3BsaXQgbW9kX2Ns
b2NrIGZhbGxiYWNrIGZyb20gYnVzX2NsayBwcm9iZSAgICAKIC0gVXBkYXRlIGNvbW1lbnQKIC0g
TW92ZSBteSBTb0IgYWZ0ZXIgYWNrZWQtYnkvcmV2aWV3ZWQtYnkKCkNoYW5nZXMgaW4gdjQ6CiAt
IGl0ZW0gZGVzY3JpcHRpb24gaW4gY29ycmVjdCBvcmRlciBhbmQgYWRkIGEgYmxhbmsgbGluZQog
LSB1c2UgJXBlIGZvciBwcmludGluZyBQVFJfRVJSCiAtIGRvbid0IHByaW50IGVycm9yIHdoZW4g
aXQncyBhbiBFUFJPQkVfREVGRVIKIC0gY2hhbmdlIG91dHB1dCBjbG9jayBieXBhc3MgZm9ybXVs
YSB0byBtYXRjaCBQV00gcG9saWN5CgpDaGFuZ2VzIGluIHYzOgogLSBEb2N1bWVudGF0aW9uIHVw
ZGF0ZSB0byBhbGxvdyBvbmUgY2xvY2sgd2l0aG91dCBuYW1lCiAtIENoYW5nZSByZXNldCBvcHRp
b25hbCB0byBzaGFyZWQKIC0gSWYgcmVzZXQgcHJvYmUgZmFpbGVkIHJldHVybiBhbiBlcnJvcgog
LSBSZW1vdmUgb2xkIGNsb2NrIHByb2JlCiAtIFVwZGF0ZSBieXBhc3MgZW5hYmxlZCBmb3JtdWxh
CgpDaGFuZ2VzIGluIHYyOgogLSBSZW1vdmUgYWxsT2YgaW4gRG9jdW1lbnRhdGlvbgogLSBBZGQg
SDYgZXhhbXBsZSBpbiBEb2N1bWVudGF0aW9uCiAtIENoYW5nZSBjbG9jayBuYW1lIGZyb20gInB3
bSIgdG8gIm1vZCIKIC0gQ2hhbmdlIHJlc2V0IHF1aXJrIHRvIG9wdGlvbmFsIHByb2JlCiAtIENo
YW5nZSBidXNfY2xvY2sgcXVpcmsgdG8gb3B0aW9uYWwgcHJvYmUKIC0gQWRkIGxpbWl0YXRpb24g
Y29tbWVudCBhYm91dCBtb2RfY2xrX291dHB1dAogLSBBZGQgcXVpcmsgZm9yIG1vZF9jbGtfb3V0
cHV0CiAtIENoYW5nZSBieXBhc3MgZm9ybXVsYQoKQ2zDqW1lbnQgUMOpcm9uICgyKToKICBwd206
IHN1bjRpOiBQcmVmZXIgIm1vZCIgY2xvY2sgdG8gdW5hbWVkCiAgW0RPIE5PVCBNRVJHRV0gYXJt
NjQ6IGFsbHdpbm5lcjogaDY6IGVuYWJsZSBCZWVsaW5rIEdTMSBQV00KCkplcm5laiBTa3JhYmVj
ICg2KToKICBkdC1iaW5kaW5nczogcHdtOiBhbGx3aW5uZXI6IEFkZCBINiBQV00gZGVzY3JpcHRp
b24KICBwd206IHN1bjRpOiBBZGQgYW4gb3B0aW9uYWwgcHJvYmUgZm9yIHJlc2V0IGxpbmUKICBw
d206IHN1bjRpOiBBZGQgYW4gb3B0aW9uYWwgcHJvYmUgZm9yIGJ1cyBjbG9jawogIHB3bTogc3Vu
NGk6IEFkZCBzdXBwb3J0IHRvIG91dHB1dCBzb3VyY2UgY2xvY2sgZGlyZWN0bHkKICBwd206IHN1
bjRpOiBBZGQgc3VwcG9ydCBmb3IgSDYgUFdNCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjog
QWRkIFBXTSBub2RlCgogLi4uL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55
YW1sIHwgIDQ4ICsrKysrCiAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEu
ZHRzICAgfCAgIDQgKwogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0
c2kgIHwgIDEwICsKIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jICAgICAgICAgICAgICAgICAgICAg
ICB8IDE4NSArKysrKysrKysrKysrKystLS0KIDQgZmlsZXMgY2hhbmdlZCwgMjE1IGluc2VydGlv
bnMoKyksIDMyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
