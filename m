Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8531783E84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 02:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oAUzfYYJYiDaAy7Zfo56iFhKtrWdovrono/FeQATsTc=; b=aNZWScZXAJ9ScA
	qhxjgUX5rHcXJm0dQ02eapH4/Ee3u3yRNVB6qaZe04UtekFuyH4kvxMhKss+egsP1xY1RXFk7c8qD
	R//lq7eX58UcR3wUy0y0KlWYZyyZr0Sr17ZR9eTQ+pAMVYZUMM0wyCvPCTBsd+beJQtPXv0I85miB
	Rs2Y+uip1XRt5ccb8UsFfH4uVady8vGzmksk2414eB1vbNFd4G0PSdfn24dsPkVfRMWMaLb7Te5kD
	DobqQmkIbga0GAPfXiDePh7NhkAmWjdo7CWaMURSAJa0oKpoiQ/dDnfcrOTR8CGUoHxUIpjJCDTfj
	qRJx2plrn+/P56r8yk5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvA67-0004FS-HF; Wed, 07 Aug 2019 00:46:35 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvA5v-0004Ek-C3
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 00:46:25 +0000
Received: by mail-qt1-x843.google.com with SMTP id z4so86683775qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 17:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :cc:to; bh=+nZvNNbEUa3hT+1r/NMmepJfUlIswUH5GSUBiFbLimc=;
 b=ljHODMp9DZCsdja6NR6A7nf3q2kLMF/lCltRfg1f0HZyEoXSkcmg73nt7DK7RxaOlJ
 +CAHCuqZ8D0BABrcP1lImp4Q5ANPhJkTRvY0WmrwTa66DQA+bAeBqAPzntQJZLsUMrnk
 YvfK/fezKA3aU8oQshm1/gaBqiZpPGP/v53GY9Oufq80wrlLfoX2SnQQSApqhIoRh2yT
 zlKiaHB6ulXLqkGaUOs9N244Yj0NYr5ZrNX1xt5przHXG34BBzwQjxtHuHCUMJUbGemy
 7kffk+msubnkM9Ooeo10Rqip+wASxJuyaiZdR43KVXoqBK6mKGHRuakCyB0jBFQubvrC
 enyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:cc:to;
 bh=+nZvNNbEUa3hT+1r/NMmepJfUlIswUH5GSUBiFbLimc=;
 b=ALsfFmcOhcB+COUKWSvvuj3VVB/eBmMr8lqU7MImFnOKZtgrVevMM810UqOP/KmnQf
 HyJjxKi6gADimbkKgpmUgFPtUaWL47ra7LIRxDz2XkdbsuHWRJCu6pFGB0kg9M63vZk7
 5LqanuCSc9C4DgmtvJP185F58TaPCbXd6FVQy4zB/I1fcoVxc0ZLvHhqvH1tmhZSxFIf
 j/IiAiNswrxC5BGzR20sre/+tBQDlBOuEniW6Sn1L84XHDhXUyVjF3EcW3R7p0rKaOFu
 UCLTWYrvMM5WcHqosII41iOml7umWj1IXYajKmiaBTBxoj4FX/vcT7k1epUJ9EUiWlJ2
 ryBQ==
X-Gm-Message-State: APjAAAUVhg5nLWHENa3RntHeLRMMxWYW8EM7n8360AMRRbj3w91ShstQ
 4/rABapxPaz9RAq0QXKOS9Sw8w==
X-Google-Smtp-Source: APXvYqzfn3s4HDkpVhIAkiGkxMbioyoRgDU/o7hx7RXiLskgv/KOyg/Yc93FNgn8l7xpAog6HFdPsw==
X-Received: by 2002:a0c:ae24:: with SMTP id y33mr5812928qvc.106.1565138781643; 
 Tue, 06 Aug 2019 17:46:21 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id l19sm49124940qtb.6.2019.08.06.17.46.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 17:46:21 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: "of/platform: Pause/resume sync state during init and
 of_platform_populate()" with a warning on arm64
Message-Id: <B4B0AD7F-FA0F-4DA0-9A8B-EAE1CEE11759@lca.pw>
Date: Tue, 6 Aug 2019 20:46:20 -0400
To: Saravana Kannan <saravanak@google.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_174623_482067_65EC1F8C 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SXQgbG9va3MgbGlrZSB0aGUgbGludXgtbmV4dCBjb21taXQg4oCcb2YvcGxhdGZvcm06IFBhdXNl
L3Jlc3VtZSBzeW5jIHN0YXRlIGR1cmluZyBpbml0IGFuZCBvZl9wbGF0Zm9ybV9wb3B1bGF0ZSgp
4oCdIFsxXQpJbnRyb2R1Y2VkIGEgd2FybmluZyB3aGlsZSBib290aW5nIGFybTY0LgoKWzFdIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxOTA3MzEyMjE3MjEuMTg3NzEzLTYtc2FyYXZh
bmFrQGdvb2dsZS5jb20vCgpbICAgOTMuNDQ5MzAwXVsgICAgVDFdIGFybS1zbW11LXYzIGFybS1z
bW11LXYzLjQuYXV0bzogaWFzIDQ0LWJpdCwgb2FzIDQ0LWJpdCAoZmVhdHVyZXMgMHgwMDAwMTcw
ZCkKWyAgIDkzLjQ2NDg3M11bICAgIFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My40LmF1dG86
IGFsbG9jYXRlZCA1MjQyODggZW50cmllcyBmb3IgY21kcQpbICAgOTMuNDg1NDgxXVsgICAgVDFd
IGFybS1zbW11LXYzIGFybS1zbW11LXYzLjQuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBlbnRyaWVz
IGZvciBldnRxClsgICA5My40OTYzMjBdWyAgICBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMu
NS5hdXRvOiBvcHRpb24gbWFzayAweDIKWyAgIDkzLjUwMjkxN11bICAgIFQxXSBhcm0tc21tdS12
MyBhcm0tc21tdS12My41LmF1dG86IGlhcyA0NC1iaXQsIG9hcyA0NC1iaXQgKGZlYXR1cmVzIDB4
MDAwMDE3MGQpClsgICA5My42MjE4MThdWyAgICBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMu
NS5hdXRvOiBhbGxvY2F0ZWQgNTI0Mjg4IGVudHJpZXMgZm9yIGNtZHEKWyAgIDkzLjY0MzAwMF1b
ICAgIFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My41LmF1dG86IGFsbG9jYXRlZCA1MjQyODgg
ZW50cmllcyBmb3IgZXZ0cQpbICAgOTQuNTE5NDQ1XVsgICAgVDFdIGxpYnBoeTogRml4ZWQgTURJ
TyBCdXM6IHByb2JlZApbICAgOTQuNTI0NjQ5XVsgICAgVDFdIEVGSSBWYXJpYWJsZXMgRmFjaWxp
dHkgdjAuMDggMjAwNC1NYXktMTcKWyAgIDk0LjYwMTE2Nl1bICAgIFQxXSBORVQ6IFJlZ2lzdGVy
ZWQgcHJvdG9jb2wgZmFtaWx5IDE3ClsgICA5NC43NjYwMDhdWyAgICBUMV0genN3YXA6IGxvYWRl
ZCB1c2luZyBwb29sIGx6by96YnVkClsgICA5NC43NzQ3NDVdWyAgICBUMV0ga21lbWxlYWs6IEtl
cm5lbCBtZW1vcnkgbGVhayBkZXRlY3RvciBpbml0aWFsaXplZCAobWVtcG9vbCBzaXplOiAxNjM4
NCkKWyAgIDk0Ljc3NDc1Nl1bIFQxNjk5XSBrbWVtbGVhazogQXV0b21hdGljIG1lbW9yeSBzY2Fu
bmluZyB0aHJlYWQgc3RhcnRlZApbICAgOTQuODEyMzM4XVsgVDEzNjhdIHBjaWVwb3J0IDAwMDA6
MGY6MDAuMDogQWRkaW5nIHRvIGlvbW11IGdyb3VwIDAKWyAgIDk0Ljk4NDQ2Nl1bICAgIFQxXSAt
LS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KWyAgIDk0Ljk4OTgyN11bICAgIFQx
XSBVbm1hdGNoZWQgc3luY19zdGF0ZSBwYXVzZS9yZXN1bWUhClsgICA5NC45ODk4OTRdWyAgICBU
MV0gV0FSTklORzogQ1BVOiAyNSBQSUQ6IDEgYXQgZHJpdmVycy9iYXNlL2NvcmUuYzo2OTEgZGV2
aWNlX2xpbmtzX3N1cHBsaWVyX3N5bmNfc3RhdGVfcmVzdW1lKzB4MTAwLzB4MTI4ClsgICA5NS4w
MDYwNjJdWyAgICBUMV0gTW9kdWxlcyBsaW5rZWQgaW46ClsgICA5NS4wMDk4MTVdWyAgICBUMV0g
Q1BVOiAyNSBQSUQ6IDEgQ29tbTogc3dhcHBlci8wIE5vdCB0YWludGVkIDUuMy4wLXJjMy1uZXh0
LTIwMTkwODA2KyAjMTEKWyAgIDk1LjAxODE2MV1bICAgIFQxXSBIYXJkd2FyZSBuYW1lOiBIUEUg
QXBvbGxvIDcwICAgICAgICAgICAgIC9DMDFfQVBBQ0hFX01CICAgICAgICAgLCBCSU9TIEw1MF81
LjEzXzEuMTEgMDYvMTgvMjAxOQpbICAgOTUuMDI4NTkzXVsgICAgVDFdIHBzdGF0ZTogNjA0MDAw
MDkgKG5aQ3YgZGFpZiArUEFOIC1VQU8pClsgICA5NS4wMzQwNzddWyAgICBUMV0gcGMgOiBkZXZp
Y2VfbGlua3Nfc3VwcGxpZXJfc3luY19zdGF0ZV9yZXN1bWUrMHgxMDAvMHgxMjgKWyAgIDk1LjA0
MTEyNF1bICAgIFQxXSBsciA6IGRldmljZV9saW5rc19zdXBwbGllcl9zeW5jX3N0YXRlX3Jlc3Vt
ZSsweDEwMC8weDEyOApbICAgOTUuMDQ4MTY3XVsgICAgVDFdIHNwIDogMzRmZjgwMDgwNmU2ZmJj
MApbICAgOTUuMDUyMTcyXVsgICAgVDFdIHgyOTogMzRmZjgwMDgwNmU2ZmMwMCB4Mjg6IDAwMDAw
MDAwMDAwMDAwMDAgClsgICA5NS4wNTgxNzddWyAgICBUMV0geDI3OiAwMDAwMDAwMDAwMDAwMDAw
IHgyNjogMDAwMDAwMDAwMDAwMDAwMCAKWyAgIDk1LjA2NDE4MV1bICAgIFQxXSB4MjU6IDAwMDAw
MDAwMDAwMDAwMzggeDI0OiAwMDAwMDAwMDAwMDAwMDAwIApbICAgOTUuMDcwMTg1XVsgICAgVDFd
IHgyMzogMDAwMDAwMDAwMDAwMDAwMCB4MjI6IDAwMDAwMDAwMDAwMDAwMTkgClsgICA5NS4wNzYx
ODldWyAgICBUMV0geDIxOiAwMDAwMDAwMDAwMDAwMDAwIHgyMDogZjlmZjgwOGI4MDRlNmM1MCAK
WyAgIDk1LjA4MjE5M11bICAgIFQxXSB4MTk6IGZmZmYxMDAwMTRhNmU2MDAgeDE4OiAwMDAwMDAw
MDAwMDAwMDQwIApbICAgOTUuMDg4MTk3XVsgICAgVDFdIHgxNzogMDAwMDAwMDAwMDAwMDAwMCB4
MTY6IDg2ZmY4MDA5OWQ1ODFiNTAgClsgICA5NS4wOTQyMDFdWyAgICBUMV0geDE1OiAwMDAwMDAw
MDAwMDAwMDAwIHgxNDogZmZmZjEwMDAxMDA4NmQxYyAKWyAgIDk1LjEwMDIwNV1bICAgIFQxXSB4
MTM6IGZmZmYxMDAwMTA5ZDg2ODggeDEyOiBmZmZmZmZmZmZmZmZmZmZmIApbICAgOTUuMTA2MjA5
XVsgICAgVDFdIHgxMTogMDAwMDAwMDAwMDAwMDBmOSB4MTA6IGZmZmYwODA4YjgwNGU2YzYgClsg
ICA5NS4xMTIyMTNdWyAgICBUMV0geDkgOiA0YjcxYWQ1MjJjODUxZDAwIHg4IDogNGI3MWFkNTIy
Yzg1MWQwMCAKWyAgIDk1LjExODIxN11bICAgIFQxXSB4NyA6IDYxNzAyMDY1NzQ2MTc0NzMgeDYg
OiBmZmZmMTAwMDE0MDc2OTcyIApbICAgOTUuMTI0MjIxXVsgICAgVDFdIHg1IDogMzRmZjgwMDgw
NmU2ZjhmMCB4NCA6IDAwMDAwMDAwMDAwMDAwMGYgClsgICA5NS4xMzAyMjVdWyAgICBUMV0geDMg
OiBmZmZmMTAwMDEwMWJmYTVjIHgyIDogMDAwMDAwMDAwMDAwMDAwMSAKWyAgIDk1LjEzNjIyOV1b
ICAgIFQxXSB4MSA6IDAwMDAwMDAwMDAwMDAwMDEgeDAgOiAwMDAwMDAwMDAwMDAwMDIyIApbICAg
OTUuMTQyMjMzXVsgICAgVDFdIENhbGwgdHJhY2U6ClsgICA5NS4xNDUzNzRdWyAgICBUMV0gIGRl
dmljZV9saW5rc19zdXBwbGllcl9zeW5jX3N0YXRlX3Jlc3VtZSsweDEwMC8weDEyOApbICAgOTUu
MTUyMDc0XVsgICAgVDFdICBvZl9wbGF0Zm9ybV9zeW5jX3N0YXRlX2luaXQrMHgxMC8weDFjClsg
ICA5NS4xNTc1NTddWyAgICBUMV0gIGRvX29uZV9pbml0Y2FsbCsweDJmOC8weDYwMApbICAgOTUu
MTYyMTcyXVsgICAgVDFdICBkb19pbml0Y2FsbF9sZXZlbCsweDM3Yy8weDNmYwpbICAgOTUuMTY2
OTU5XVsgICAgVDFdICBkb19iYXNpY19zZXR1cCsweDM0LzB4NGMKWyAgIDk1LjE3MTMxM11bICAg
IFQxXSAga2VybmVsX2luaXRfZnJlZWFibGUrMHgxODgvMHgyNGMKWyAgIDk1LjE3NjM2M11bICAg
IFQxXSAga2VybmVsX2luaXQrMHgxOC8weDMzNApbICAgOTUuMTgwNTQzXVsgICAgVDFdICByZXRf
ZnJvbV9mb3JrKzB4MTAvMHgxOApbICAgOTUuMTg0ODA5XVsgICAgVDFdIC0tLVsgZW5kIHRyYWNl
IGE5ZWE2OGM5MDI1NDBmZTUgXS0tLQpbICAgOTUuMjY5MDg1XVsgICAgVDFdIEZyZWVpbmcgdW51
c2VkIGtlcm5lbCBtZW1vcnk6IDI4NjcySwpbICAxMDEuMDY5ODYwXVsgICAgVDFdIENoZWNrZWQg
VytYIG1hcHBpbmdzOiBwYXNzZWQsIG5vIFcrWCBwYWdlcyBmb3VuZApbICAxMDEuMDc2MjY1XVsg
ICAgVDFdIFJ1biAvaW5pdCBhcyBpbml0IHByb2Nlc3MKWyAgMTAxLjE4NjM1OV1bICAgIFQxXSBz
eXN0ZW1kWzFdOiBTeXN0ZW0gdGltZSBiZWZvcmUgYnVpbGQgdGltZSwgYWR2YW5jaW5nIGNsb2Nr
LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
