Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601231F1D6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 18:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ebSUCclasJzxYmtJ6yQu+QuTl+pYGrYaIemV62hDENg=; b=lmpeoHIrmovoxz
	Rzz1nKkzxhpes6pXvcs5z0auy131gP1aZNI0F3y8SfvzB7/3VGaVzREXsrgMktXeBcWKP7VMoU8bo
	Adi84Wcp34Vtpnostoxei7DjWV57VRxOauMDGmW4O0iiOCL6Uapx5BfHMuT/5M651ZizGkAFGPUgo
	wRTfwry2TNeYJAajNBEnlIItWSvCzXGqWAHPPvrv+q9KdC5Gu1sO/NoQzxVJSmGlG6VjOj7NDmaEo
	3rtDwwp+TH+Fus1gJtvxgCUYrxHP1luJ6SH+F0+hPeHIroakUUuZrxF1X+hIDULNk2zVgx/OnLea8
	lZJPJXTRQ2XihEZTcx9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiKj0-0005df-A0; Mon, 08 Jun 2020 16:34:14 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiKib-0005YM-8i
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 16:33:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id c17so21282099lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 09:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m+2vmCPmV1GsBmZa4YiHUJXp9kcoqHgm5vAPz2Z41dc=;
 b=dCco+UPr+Qdqyxew4yI7E/N/GFI4x1x5iAWBvad3otlo2w6Mz/ATPfCXrVBYyd0fmp
 sPGCvbx0279Nyc4cAJpMD4bmWLfTalhfPcF9xgQjbppHeOKL/ihn4sRUXyz+/LBcNbN3
 CBbcve97jjtiQXPsa99SqJjZa7J/nND4Ky+qYTZzd2E5Ne6LR+sAJEJ/6zRDvLrUFK2C
 C31nJ6SvZRIsytK2bDqotUluqHWbWPj3/sqPddM229t1XvhzoMmumyCRvK4trXb3ZXOD
 eM+ZaT15kI3Fb/+hgj9hoX5byyWuPDpz7mA1ya6owI8HVRt5Rw+yzGbbZWAg2mlkYxqr
 YkQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m+2vmCPmV1GsBmZa4YiHUJXp9kcoqHgm5vAPz2Z41dc=;
 b=dYuU3NMfMi/Vrlz+aD1o8oBcQDQoU5bUXkDDQHjFaLhQ7tRXNShQtdrI3a07EhTOQt
 OIz5PfyXThZGMpaib/A+2h6bjtxKtGd9dzT6DpWxgvumDESfloqpirbBfiepYW4Ve0sH
 ynCqJ+psKlURF68g120hKBJP3TeCWQ04TPwIr+O8CTd3T1hW+I+hIrikI6lHledbQ2o2
 OW6ql0OnoXPliDBvm08evrre66f/+kDgAFopnnWJMnZB5RheXV5AeZ/+CoP/+5GQK4fv
 q3ESwJC5ktI5fow45s3zTvZ5u1WA3YF2BA6ysqUaE1NZTe+AXPKkKBRHKttgkfnP4+u9
 elBQ==
X-Gm-Message-State: AOAM530OodOwfspEHJIXDbW/lb4uH3tMe/vZdtVOSF0rzdYjaNf/qUBP
 VifflpMNAqmeExKEoE02jGU=
X-Google-Smtp-Source: ABdhPJxWz6PWDu5d+EBngNCpxb3yDuZrnsOhXN53kUvD14Jhj/X1w3zjmm7O83fxLy0M2bIlygz48A==
X-Received: by 2002:a2e:85d2:: with SMTP id h18mr12667749ljj.367.1591634027398; 
 Mon, 08 Jun 2020 09:33:47 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id y199sm4439179lff.6.2020.06.08.09.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 09:33:46 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH] ARM: dts: BCM5301X: Add missing memory "device_type" for
 Luxul XWC-2000
Date: Mon,  8 Jun 2020 18:33:41 +0200
Message-Id: <20200608163341.1743-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_093349_303910_E1631FD1 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBwcm9wZXJ0eSBp
cyBuZWVkZWQgc2luY2UgY29tbWl0IGFiZTYwYTNhN2FmYiAoIkFSTTogZHRzOiBLaWxsIG9mZgpz
a2VsZXRvbns2NH0uZHRzaSIpLiBXaXRob3V0IGl0IGJvb3Rpbmcgc2lsZW50bHkgaGFuZ3MgYXQ6
ClsgICAgMC4wMDAwMDBdIE1lbW9yeSBwb2xpY3k6IERhdGEgY2FjaGUgd3JpdGVhbGxvYwoKRml4
ZXM6IDk4NDgyOWUyZDM5YiAoIkFSTTogZHRzOiBCQ001MzAxWDogQWRkIERUIGZvciBMdXh1bCBY
V0MtMjAwMCIpClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5w
bD4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9iY200NzA5NC1sdXh1bC14d2MtMjAwMC5kdHMgfCAx
ICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL2JjbTQ3MDk0LWx1eHVsLXh3Yy0yMDAwLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2JjbTQ3MDk0LWx1eHVsLXh3Yy0yMDAwLmR0cwppbmRleCA2N2E1OTgyYWY5YzkuLjlhZTgxNWRk
YmI0YiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwOTQtbHV4dWwteHdjLTIw
MDAuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDk0LWx1eHVsLXh3Yy0yMDAwLmR0
cwpAQCAtMTcsNiArMTcsNyBAQCBjaG9zZW4gewogCX07CiAKIAltZW1vcnkgeworCQlkZXZpY2Vf
dHlwZSA9ICJtZW1vcnkiOwogCQlyZWcgPSA8MHgwMDAwMDAwMCAweDA4MDAwMDAwCiAJCSAgICAg
ICAweDg4MDAwMDAwIDB4MTgwMDAwMDA+OwogCX07Ci0tIAoyLjI2LjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
