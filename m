Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B191B8FAF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmMyhYKDFn6LHgeFhUnAG9yOTX6Ni6DgJ3NqDngObpE=; b=mEjvJ6t0cyi+HT
	voNfg7DlAeXltFATLjUDbeaeSwurXzjKH3zrzp5XRwYsO1YYfg57bGNer9BQDZInJT5qaUyMCSPsZ
	k4rLXHxKF6dBtiX3izNlMS/W0Iu0DLizuIVEo0bTSZnhr2mRhWd3gil/UU2ixICdOhA/NAJNSQ1xC
	0QNIjju2pfC56KaCd7KWIjzhFxMg3BbvKcczsG3Z2reH+XVnxmJ5KkTk2LsLR/Jh82Q8doomI9B+k
	N/vJBWsjEu5lrekk3YkeEaaoJ85571Mpamh13FEyziU+OJU6oCurrSRdLxPSKDRX+82lgnBhorEB2
	G1Z9yfKt+fjvDfJiFJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSg2L-0002aE-Qa; Sun, 26 Apr 2020 12:05:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSg1i-0001sN-9U
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:04:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id z6so17101214wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JenE0fEHUuGOY59D+9+b4JVrWQ5bnv0TWy8Is92oGAI=;
 b=PuhG3pd4LENiw+3akKIphd684cvbNp+m+e7wETgmmogANBMf2IUlTiUv6/+ZR3twmm
 8PKUDRzyH1LZ9uTW0ChOX7OLnh6J1jFnuGyF5GQLqXvj/rpbRGM2M+aclTd/tlaA8I9S
 zoOWMUSnJXnuu3Mya8aOTklwTL67oTm398/l+tYSrhKMq0UxjjHh+//Yy9As7Jq6vUvE
 yHkYY1e+IMKM7Eud7FGWEuFZTHdqDCQY2TXTlzJX43QVU5wBEdu9IxSw9MrD7YJVirl2
 FR+1Ctk7uTjHB7otGlPl/LZb0YhL5CTw4UAcuSywFP/jD3c6ZXUJ6zv3+B6BGY1C9Fs3
 1hcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JenE0fEHUuGOY59D+9+b4JVrWQ5bnv0TWy8Is92oGAI=;
 b=dIqBWf6VyTQmdx19U1Nb75Gs2VRzNmNeBK0jrK0DeFy4LlRX7cA8S/F8wyz46INUb+
 BjaBClsyfiP7ToclUUlhdDupdJl0y+yxLNscmX5/I6siqDrBzC5y2kDgnZbJDdTmOTyW
 EBYhcvyAQ6pWDc27Eptu9gxFEqVW0mxKcVdSThwTBL9ytJCT2RIcPaNabMAOFTvL8kx4
 agZpAwQK/DISI5FlpP00eO0GjBJMabPAv0u4x1tZdxgd9628wkjY75ROTFiwWcaBfFHu
 ocZEn9A986kZSzT8MaCgOnN0SvGkeKjEpAvZ2u4Fpg4bdA/MudVlA+fsAe+2Ga0rKo7O
 +gFg==
X-Gm-Message-State: AGi0PuZOiSrRL3VaY/Po/2Ywv73ITNB0d0tIYK1fjieEkyZoNHmEE8Qz
 goUWVvwXdny9uYjG0tGV5No=
X-Google-Smtp-Source: APiQypIEJTvJUtupeAfilLnksXm+HBYSzaFmjg+EIAPU4aLI3y84HQ3t53IugQfHHJS+CiIW0H3ifQ==
X-Received: by 2002:a7b:c850:: with SMTP id c16mr19592486wml.108.1587902687908; 
 Sun, 26 Apr 2020 05:04:47 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 s24sm11120026wmj.28.2020.04.26.05.04.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:04:47 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 1/7] arm: dts: sunxi: h3/h5: Add DAI node for HDMI
Date: Sun, 26 Apr 2020 14:04:36 +0200
Message-Id: <20200426120442.11560-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426120442.11560-1-peron.clem@gmail.com>
References: <20200426120442.11560-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_050450_325563_3F3DBDDE 
X-CRM114-Status: GOOD (  11.09  )
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
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpBZGQgdGhlIG5ldyBE
QUkgYmxvY2sgZm9yIEkyUzIgd2hpY2ggaXMgdXNlZCBmb3IgSERNSSBhdWRpby4KClNpZ25lZC1v
ZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtL2Jv
b3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kgfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhp
LWgzLWg1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpCmluZGV4IDIy
ZDUzM2QxODk5Mi4uOWJlMTMzNzhkNGRmIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9z
dW54aS1oMy1oNS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kK
QEAgLTY2Miw2ICs2NjIsMTkgQEAKIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKKwkJ
aTJzMjogaTJzQDFjMjI4MDAgeworCQkJI3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKKwkJCWNvbXBh
dGlibGUgPSAiYWxsd2lubmVyLHN1bjhpLWgzLWkycyI7CisJCQlyZWcgPSA8MHgwMWMyMjgwMCAw
eDQwMD47CisJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTUgSVJRX1RZUEVfTEVWRUxfSElHSD47
CisJCQljbG9ja3MgPSA8JmNjdSBDTEtfQlVTX0kyUzI+LCA8JmNjdSBDTEtfSTJTMj47CisJCQlj
bG9jay1uYW1lcyA9ICJhcGIiLCAibW9kIjsKKwkJCWRtYXMgPSA8JmRtYSAyNz47CisJCQlyZXNl
dHMgPSA8JmNjdSBSU1RfQlVTX0kyUzI+OworCQkJZG1hLW5hbWVzID0gInR4IjsKKwkJCXN0YXR1
cyA9ICJkaXNhYmxlZCI7CisJCX07CisKIAkJY29kZWM6IGNvZGVjQDFjMjJjMDAgewogCQkJI3Nv
dW5kLWRhaS1jZWxscyA9IDwwPjsKIAkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjhpLWgz
LWNvZGVjIjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
