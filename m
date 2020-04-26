Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7371B8EFC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 12:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsQ+i/ibsmw/Z8+Dsti1VUqO56DU2CXOWFkGaS8viyU=; b=JDN5dKsol+oCU6
	6pJeTwDlbi0InHm+faNlB+kCWrM3dhcDE1S2MXUc9NzgIlsYep4N/GUZo0V8nWg6P37ojuGETGjy7
	+xdNASe9mOxK1A+2NI7qcVKjmcnYdxlplnQk3+911v+vRDQfoEBSP60L5NGb4nbzoStRAOAIUZr0f
	vo5zuVH08FXsQY1UFsLnSj/Gu5IvJ5aM3pdEZsTkGuPrdbtGlIE2OvpBVgQzl2Hcp7kWb48l3zOgj
	1zPsjtCQie+dNdsj5aSHaaUgyvRRL5ZkwFsrRkCaz9sEfLL3O4BlQxM4tgmnoooO1pCMzQnsko7It
	alOTOG2VdgpeGHeJLxmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSekr-0004KR-IG; Sun, 26 Apr 2020 10:43:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSej1-0002yB-Bw
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 10:41:29 +0000
Received: by mail-wm1-x344.google.com with SMTP id v8so13607384wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 03:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/FLLl3Lmv6P46g23QaNfgW2hXBgcdl0HHdXkGyMc3vQ=;
 b=YV8SdxWnCc7yDLnHkZGAeWRKIyr/QoRW4IOW0ERhXl1Sk67OS4PbfAGe5c44az0zzn
 gSLeDjP1mOWpE/nDCUFVkbINqiYRabevpwJKJk99nNPr6/mGS8wEg3bGOJJLwi/+sq9W
 68xapeEEDPYPqlcxP1MRaSx8KYKquHkJv9WIle6pxk2AH30Lpd4UJJmKexNSBeg+ydJh
 Xd+XKwa0wsB8XIBhc6ncR0XO9GVIEkr4WTJzhpUNdfPE1YfncqvCDedLTcQOZzXQBdZc
 Tp2rZp6tNz+zkvJHrzjn1PkvN0syPRtg2uM4X0+6/XYe4HlmSf5ECH69lBnY+yXiU/St
 ridg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/FLLl3Lmv6P46g23QaNfgW2hXBgcdl0HHdXkGyMc3vQ=;
 b=g1bCDobFRflKHdxRp80WQh+BDi/mIamDgViLwaSCQy4dXVJDONpshx7RLsxKkMmCjp
 ZrzRjr3QMrokf7ZF1uSX9yu77ROi79hSImgW4iU1zkwG18+/dvOf9Ysm7RbiK6N93rfT
 rCDn01NeMhv0ihWVxISmYu55x8CoQ0xLMWi6MqJfa8ubwleVm3iBHVaoIDhgL/P+/Ycb
 gMhq8W/T/IJrvWRuTV9l5zUc+xLfF6snzN5kjaMNaXSk5nUQLTmZXR2IzYqi/+me2+LD
 hL07hWXM4Eem9KuB7xf4jXxn2EovgUQaKyzcVqYnj9mvdkFqVTD5PRHX+rTntVwYxBmz
 zilg==
X-Gm-Message-State: AGi0PuaE7VOL/i1EB/S11ADVaHKMd81BAfyPRa3urqCDtb9fMNWbwoMP
 XsAYbhG1dMq0Cw0WTDjMLxU=
X-Google-Smtp-Source: APiQypKv5SHULHMlQUX80eAs8h8KPRFAzZNFj61ehmLXvJWXiIe6MAQFvFVTO/AASlwcFJaq37x6pQ==
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr20341161wmj.101.1587897685701; 
 Sun, 26 Apr 2020 03:41:25 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 y10sm10491793wma.5.2020.04.26.03.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 03:41:25 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v3 6/7] ASoC: sun4i-i2s: Adjust regmap settings
Date: Sun, 26 Apr 2020 12:41:14 +0200
Message-Id: <20200426104115.22630-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426104115.22630-1-peron.clem@gmail.com>
References: <20200426104115.22630-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_034127_413875_B57700C4 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpCeXBhc3MgdGhlIHJl
Z21hcCBjYWNoZSB3aGVuIGZsdXNoaW5nIG9yIHJlYWRpbmcgdGhlIGkycyBGSUZPcy4KClNpZ25l
ZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIHNvdW5kL3Nv
Yy9zdW54aS9zdW40aS1pMnMuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMgYi9zb3VuZC9zb2Mv
c3VueGkvc3VuNGktaTJzLmMKaW5kZXggMjc3YmY1NjZjMTU0Li5iNWFiMjU0ODNhOWIgMTAwNjQ0
Ci0tLSBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYworKysgYi9zb3VuZC9zb2Mvc3VueGkv
c3VuNGktaTJzLmMKQEAgLTExMjEsNiArMTEyMSw4IEBAIHN0YXRpYyBib29sIHN1bjRpX2kyc192
b2xhdGlsZV9yZWcoc3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcmVnKQogewogCXN3
aXRjaCAocmVnKSB7CiAJY2FzZSBTVU40SV9JMlNfRklGT19SWF9SRUc6CisJY2FzZSBTVU40SV9J
MlNfRklGT19UWF9SRUc6CisJY2FzZSBTVU40SV9JMlNfRklGT19TVEFfUkVHOgogCWNhc2UgU1VO
NElfSTJTX0lOVF9TVEFfUkVHOgogCWNhc2UgU1VONElfSTJTX1JYX0NOVF9SRUc6CiAJY2FzZSBT
VU40SV9JMlNfVFhfQ05UX1JFRzoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
