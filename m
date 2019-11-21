Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A586105AC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 21:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyokF/3Fg5OjRpjO2FHfaWulx/3yMqi1AkR1Dyw2iCU=; b=E8Sl5i5WLGZRVg
	ZJ2c7LscE6CsvgVG7TbfgK9LLPefVfIFR1nZwVgdmlcavpPYUkQfzhloJthjo2tNE3uzDSF6M6zUC
	bSVxY72+bt7ecDVKD6eTGbfSMBd4FWxw6UKSWO3ZLPFe/LH3gM0HNzJ81Mh4frFtargSLtZrAQvA5
	hZeCalKTlmJ7xI+vOedp3VhijOndfaOXan2fycZcGBEvyvz78JzjWwjnQcqkz6ubrngX1RA6H/7j5
	XdEDIQykGBflWj6Mr5v/B9TvyQ/Ezbuk+DrzI1kdPTNdYSHAHc3iYV2k8NYrXbFDWMf/nWiftclF2
	dNsDHaSccmRYOd8w0F1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXscq-0001u6-WA; Thu, 21 Nov 2019 20:00:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsbj-0001D6-Uk
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:59:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id z19so5150238wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 11:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PYYcMhCYLh99IaUN22VzlWfjt3WzTsIGH/YGey+qGyI=;
 b=i9w4EOY4O9bXhQu+sR8nZY5pzFKJZCx/BBuFxaVSZR+0PdyRLkH8st0Ng44twdhayu
 nUO7fWgGO8VqhbTGoi+oLEq3kTO4Yoj//6rgF+nYd9LBn77ceoF76LDjrlz2zDf2RLn/
 BZLMX0HRa5/2o0A58gV3UyjYec2lWJ9VDn9UHP+iXQQhQLYbidwuK0NJ+GGmfRReQcex
 vfpcshQMFpJXNpZ1F5u3OnyDzU2Ao0/d55n1dnWwb499EJNRyT6cI8HjsL0BOXwKI9de
 a3RjQk7IKI/UwDKaag+F1pHvUNgryebvGzR1yTqwRYZHbhRaEZFbJtn2gPnrq7paTbGr
 YOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PYYcMhCYLh99IaUN22VzlWfjt3WzTsIGH/YGey+qGyI=;
 b=bqiPJEckHRXdK97Mc7ew+037Bc+2iIpyhOT22puFG0h1xc5Xave0O36AUtWZn15Rfc
 F6o4ceaTrVM1+JEH1al2oTmx/JldwIh286+2/zz0cHAvDsK9w56nW36oESYfnxPpUYXz
 3e5M0wTfFxXUQ7GLiaE7OqUE4JFRiSbS38fwLWRb48lyzf7ws8vJyb0AW1tQ93AWAJCf
 dNQh+5kcy6PyZQAIJDUkodjPI4y4NTbyGZSsHDtVK1gg9exoj0gb2ujhp3l/B9XkWsfO
 XDWzzfTSeRbQeXNeGMfeHUCZD6P4q7f1hHYxmEyqPDVmFYEOzU7Rgk1dBcNSMd8lyTsA
 imqg==
X-Gm-Message-State: APjAAAXGo3gyBJp8yxLWp/aIJEl3i+K6A+afFIHqAAwMOrr20JkO5VTf
 h4qYoGu6fEXhSf8Ci1BqVPRDnvsRQGA=
X-Google-Smtp-Source: APXvYqwbgqimjqppMsN2KbSc785eOX59193AYNJJcYkigIB+7/VTzs4LtmZNnv6gckI42ubUc8ba7w==
X-Received: by 2002:a1c:6a1a:: with SMTP id f26mr12594907wmc.19.1574366354139; 
 Thu, 21 Nov 2019 11:59:14 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id l4sm747124wme.4.2019.11.21.11.59.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:59:13 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v8 3/6] pwm: sun4i: Add an optional probe for bus clock
Date: Thu, 21 Nov 2019 20:58:59 +0100
Message-Id: <20191121195902.6906-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191121195902.6906-1-peron.clem@gmail.com>
References: <20191121195902.6906-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_115916_083227_1F0C1DBC 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gd29yay4KCkFkZCBh
biBvcHRpb25hbCBwcm9iZSBmb3IgaXQuCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8
amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8
cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCAyMyAr
KysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1z
dW40aS5jCmluZGV4IDM2OTk5MGFlN2QwOS4uNjZiZWZkOGQ2ZjljIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3B3bS9wd20tc3VuNGkuYworKysgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwpAQCAtNzgs
NiArNzgsNyBAQCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgewogCiBzdHJ1Y3Qgc3VuNGlfcHdtX2No
aXAgewogCXN0cnVjdCBwd21fY2hpcCBjaGlwOworCXN0cnVjdCBjbGsgKmJ1c19jbGs7CiAJc3Ry
dWN0IGNsayAqY2xrOwogCXN0cnVjdCByZXNldF9jb250cm9sICpyc3Q7CiAJdm9pZCBfX2lvbWVt
ICpiYXNlOwpAQCAtMzkxLDYgKzM5MiwxNCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQl9CiAJfQogCisJcHdtLT5idXNfY2xrID0g
ZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJidXMiKTsKKwlpZiAoSVNfRVJSKHB3
bS0+YnVzX2NsaykpIHsKKwkJaWYgKFBUUl9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVGRVIp
CisJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgYnVzIGNsb2NrIGZhaWxlZCAlcGVcbiIsCisJ
CQkJcHdtLT5idXNfY2xrKTsKKwkJcmV0dXJuIFBUUl9FUlIocHdtLT5idXNfY2xrKTsKKwl9CisK
IAlwd20tPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfc2hhcmVkKCZwZGV2
LT5kZXYsIE5VTEwpOwogCWlmIChJU19FUlIocHdtLT5yc3QpKSB7CiAJCWlmIChQVFJfRVJSKHB3
bS0+cnN0KSAhPSAtRVBST0JFX0RFRkVSKQpAQCAtNDA3LDYgKzQxNiwxNyBAQCBzdGF0aWMgaW50
IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyZXR1cm4g
cmV0OwogCX0KIAorCS8qCisJICogV2UncmUga2VlcGluZyB0aGUgYnVzIGNsb2NrIG9uIGZvciB0
aGUgc2FrZSBvZiBzaW1wbGljaXR5LgorCSAqIEFjdHVhbGx5IGl0IG9ubHkgbmVlZHMgdG8gYmUg
b24gZm9yIGhhcmR3YXJlIHJlZ2lzdGVyIGFjY2Vzc2VzLgorCSAqLworCXJldCA9IGNsa19wcmVw
YXJlX2VuYWJsZShwd20tPmJ1c19jbGspOworCWlmIChyZXQpIHsKKwkJZGV2X2VycigmcGRldi0+
ZGV2LCAiQ2Fubm90IHByZXBhcmUgYW5kIGVuYWJsZSBidXNfY2xrICVkXG4iLAorCQkJcmV0KTsK
KwkJZ290byBlcnJfYnVzOworCX0KKwogCXB3bS0+Y2hpcC5kZXYgPSAmcGRldi0+ZGV2OwogCXB3
bS0+Y2hpcC5vcHMgPSAmc3VuNGlfcHdtX29wczsKIAlwd20tPmNoaXAuYmFzZSA9IC0xOwpAQCAt
NDI3LDYgKzQ0Nyw4IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7CiAKIGVycl9wd21fYWRkOgorCWNsa19kaXNhYmxl
X3VucHJlcGFyZShwd20tPmJ1c19jbGspOworZXJyX2J1czoKIAlyZXNldF9jb250cm9sX2Fzc2Vy
dChwd20tPnJzdCk7CiAKIAlyZXR1cm4gcmV0OwpAQCAtNDQxLDYgKzQ2Myw3IEBAIHN0YXRpYyBp
bnQgc3VuNGlfcHdtX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChy
ZXQpCiAJCXJldHVybiByZXQ7CiAKKwljbGtfZGlzYWJsZV91bnByZXBhcmUocHdtLT5idXNfY2xr
KTsKIAlyZXNldF9jb250cm9sX2Fzc2VydChwd20tPnJzdCk7CiAKIAlyZXR1cm4gMDsKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
