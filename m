Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B20EF4265
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=74sUA3nREo0RUQ7/Aaav1tAFpseKF+yLUiFlyYoteAE=; b=KalPKsQlTYH+qz
	oOWMTJwCZpHVcwRke41c6vJyFcnEVTIGvt9kdnVKtL1wuWIbJIZbZ7J8ZX8kaFnsr38SRTUhq0pee
	9gkDPiB4AFtLbU3p7+lZ2nZOoic6qR3JCb8yvN5h7JqbPZeBcPnfceaD2TxDhieToEHvqW+ewtjxs
	Yu0nKNVq5Z+avW1mUet4JEP0VueIRtv+LJAvDlRVt9MraxNhERxq8w0mAayZl240ZQzZ6pP4joTV3
	K8gNyUW7lut+kJ/ekiACURI7HBRaq1JPuVlt+6aByPeXjmja1S9FMqxnpgGquUrigrJi6Q3hBA3tK
	VABKW01saQsGi8mPN52w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSztn-0005LF-8t; Fri, 08 Nov 2019 08:45:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSztY-0005JL-KR
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:45:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id t1so6059600wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UccqdAo7IzTySK8qOn69qu7ZemSz3pumZu0giDZZJwo=;
 b=K10lBDF86jhAbsnP8e8+0nSjnntCeKbSBeQFsQzCp/EA9baVgT/YVAObcTj9cWg0OT
 jx47faUrEInGiWGQSYjuPB6QI1UvstNvXEwPyj8HsAgO1ugv98Md1F8O0MNbsY2MAQ3B
 ZVhEqu8OAgf8TFdPp9AgF9ETBcesWuqTf7tQFxvw7jzP2yaSyotpD/kYm2MUgJdZhCQX
 1AaPnQBpOfOU/CP7Jfm9QJQhZFC6ka0gsgqupVri1pt28ClUX46023aAZJaWyuAhT9EU
 2gpTs5FLkiosRlipaMZLpoRsi2xSVBFXnZUDjyg2jxHi+nWuVRq6wLvz/00itjIdE+6+
 Szyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UccqdAo7IzTySK8qOn69qu7ZemSz3pumZu0giDZZJwo=;
 b=FTvBbBSXjLqdTlp4ONp5Wqoflq90xSDwZd40y9Bqaeq/+5ZN4Rqx0ZGWNIqXviCZrt
 ZxuQp5fuNyZg2ptEXNxvw3P8/kgW+z5PLcDm+WNtK9QEiS3U9z7N9/rz9M5hv7y6MQtn
 BPmsDTbTwcDIM3AQSj9kKbUcTDcSUc9xhsbK0oIZnyOns8Jd1W3EETs+30Mns3nhq2xW
 oBDG0FQlmnYukGs5iukmzyQSCzn/58gdoqgkOohgMU1iRF1L7yogAcVImDIOs9I184VL
 13hjwSY30n0TDIR2YsD9rutqosGJxrWyiLZfCK3JCYms14MUD+Efn94OBaaHp6CZP/hO
 J4Vw==
X-Gm-Message-State: APjAAAVS84frcFEoKBotEW9r4+GLGM9TphQsJiBvZrwaA1SKIiCF8PvQ
 k+hoyDG+bIsPiRYmaEYdG7I=
X-Google-Smtp-Source: APXvYqx/VYVdaEqy/uX0bU25eMMBLjAK414GzcQgZQ89vJt416EBAVbdEQj35KuQhYHS3OeavYucNQ==
X-Received: by 2002:adf:ef4f:: with SMTP id c15mr7385835wrp.296.1573202726832; 
 Fri, 08 Nov 2019 00:45:26 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id q25sm6662665wra.3.2019.11.08.00.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 00:45:26 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v4 0/7] Add support for H6 PWM
Date: Fri,  8 Nov 2019 09:45:10 +0100
Message-Id: <20191108084517.21617-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004528_700178_14648977 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA2MTczNy8KCkNoYW5nZXMgaW4gdjQ6CiAt
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
cHV0CiAtIENoYW5nZSBieXBhc3MgZm9ybXVsYQoKQ2zDqW1lbnQgUMOpcm9uICgxKToKICBbRE8g
Tk9UIE1FUkdFXSBhcm02NDogYWxsd2lubmVyOiBoNjogZW5hYmxlIEJlZWxpbmsgR1MxIFBXTQoK
SmVybmVqIFNrcmFiZWMgKDYpOgogIGR0LWJpbmRpbmdzOiBwd206IGFsbHdpbm5lcjogQWRkIEg2
IFBXTSBkZXNjcmlwdGlvbgogIHB3bTogc3VuNGk6IEFkZCBhbiBvcHRpb25hbCBwcm9iZSBmb3Ig
cmVzZXQgbGluZQogIHB3bTogc3VuNGk6IEFkZCBhbiBvcHRpb25hbCBwcm9iZSBmb3IgYnVzIGNs
b2NrCiAgcHdtOiBzdW40aTogQWRkIHN1cHBvcnQgdG8gb3V0cHV0IHNvdXJjZSBjbG9jayBkaXJl
Y3RseQogIHB3bTogc3VuNGk6IEFkZCBzdXBwb3J0IGZvciBINiBQV00KICBhcm02NDogZHRzOiBh
bGx3aW5uZXI6IGg2OiBBZGQgUFdNIG5vZGUKCiAuLi4vYmluZGluZ3MvcHdtL2FsbHdpbm5lcixz
dW40aS1hMTAtcHdtLnlhbWwgfCAgNDggKysrKysrKwogLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LWJlZWxpbmstZ3MxLmR0cyAgIHwgICA0ICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi5kdHNpICB8ICAxMCArKwogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgICAg
ICAgICAgICAgICAgICAgICAgIHwgMTM0ICsrKysrKysrKysrKysrKysrLQogNCBmaWxlcyBjaGFu
Z2VkLCAxOTIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
