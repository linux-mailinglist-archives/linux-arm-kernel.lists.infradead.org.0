Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEFE1B8FB7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teBOgeLjFGwT7j1Q876fkrblrDaWmWqZ+m9iItcFr3g=; b=IsvJS7UF9Ftu4G
	DNjljLzidElv7GMtV/8CQmouYQ0I41QGCN5kmBGFRM3oqo9Ec2OekUw9Cqvx0p3IloLRWjXP19J67
	IikCGZMjLbX3x140ksX11/GSYfgjcJT/iCwmCnpUFwm+oLKb9D1M2mv6vxKshGTKfTpdUOu9ZMnnA
	gSMGNXMcTjdIBk0rtMxjDKS6RYqTzgC3pImFUrO/jiAw+OmxXxjojsygPpOtc8k4xXjKIKMq0e0P5
	/hAjbQQk48LM0GqW9T5zrMIGOiAiyyAKniqtiYJ5cNYesL2YOxCsFKb4djvKg3D6lCdh0E+TE1eaq
	ZbiCHF7UdC7F8PZycaKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSg3i-0005nO-5C; Sun, 26 Apr 2020 12:06:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSg1m-0001wg-LE
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:04:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id v4so13708564wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9HRQH21sjnH214q9XNZxwKqQbpfMImzTXqPykucLUEM=;
 b=pShhOnlmWPoYXwtI7svu9Gkn0lqpZ/bj+bp16sYHcB+J+6SmDLIQRlOrmx4nwK47Hw
 8yz8EbV0XefUllxTBINE1PMV4qLftxO4nM+zHMZnKL+08QyomXVyHUahRjowx3eHauqi
 uKyDYgBlZbQ8vzvyL1B3ouK2g4XCsMM5mKbAG15z5Ty3sMJILGNCrYuTIKOwSLNXZdjy
 KONr5WZDL65AtDYUeydesSkCaajICba6JguBf8HULRHgUa0nxp9yX+Kepc45irwEFEHd
 76e1uZZbiUWjh3/xsYjw1yYhkIuzKaP2CAmAynvOcbOQiDB+58JJtueKVBid24A3RZrq
 pzxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9HRQH21sjnH214q9XNZxwKqQbpfMImzTXqPykucLUEM=;
 b=uQ7E1kILGGSjmEbQ3S9LI0MR9i+mXr1yWtwyffdilw4TQQGajIQikiuTWZA7nZJm3M
 JBd56qRr6AKNCVCvFARbBP+4Fo3geKHsZuMz9M28CxLyN1T9Xyq0d5X5upWSUHKQjQbO
 ZNNfkukYiCK53QhtGX/8vfsYmbyBjgbePoEksbk8Dv6fbC8HJJemClRaxw0GMvJzKIeF
 hIPIqPdAlWKHb/y0zyiZsZG7gUdQqfiVHjNxr56q7s6ShSquOdDOxLOLpfyFOxCeYndr
 GSNEiITEYve3ES4BFaFLuyghoMSzBvpCrhyXUovSTv1FKDeuys/S3K1iEI9B+dQ407uR
 XBPQ==
X-Gm-Message-State: AGi0Pub6wIXWbLzDcGqQ6d9g5zpsIHdEuVRK8Q1af3BAQbl4jzsS/c4+
 GGc2al8woV7TypPQgOM0y4Y=
X-Google-Smtp-Source: APiQypIu+g4/wwMFCZy1TJKiDdgrbhdng4uU6Go4ZSBkM4nLAOTBSTggxG+2rj3Jejua2K4t3jZ1QA==
X-Received: by 2002:a1c:2042:: with SMTP id g63mr20587018wmg.70.1587902693276; 
 Sun, 26 Apr 2020 05:04:53 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 s24sm11120026wmj.28.2020.04.26.05.04.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:04:52 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 6/7] arm: sun8i: h3: Add HDMI audio to Beelink X2
Date: Sun, 26 Apr 2020 14:04:41 +0200
Message-Id: <20200426120442.11560-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426120442.11560-1-peron.clem@gmail.com>
References: <20200426120442.11560-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_050454_707956_11747F9D 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpFbmFibGUgSERNSSBh
dWRpbyBvbiB0aGUgQmVlbGluayBYMi4KClNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNv
ZGVraXBwZXJAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgzLWJlZWxpbmst
eDIuZHRzIHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgzLWJlZWxpbmsteDIuZHRzIGIvYXJj
aC9hcm0vYm9vdC9kdHMvc3VuOGktaDMtYmVlbGluay14Mi5kdHMKaW5kZXggNDVhMjQ0NDFmZjE4
Li5mOWJlYzY5MzUxMjAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgzLWJl
ZWxpbmsteDIuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgzLWJlZWxpbmsteDIu
ZHRzCkBAIC0xNDIsNiArMTQyLDE0IEBACiAJfTsKIH07CiAKKyZoZG1pX3NvdW5kIHsKKwlzdGF0
dXMgPSAib2theSI7Cit9OworCismaTJzMiB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJmly
IHsKIAlsaW51eCxyYy1tYXAtbmFtZSA9ICJyYy10YW5peC10eDNtaW5pIjsKIAlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
