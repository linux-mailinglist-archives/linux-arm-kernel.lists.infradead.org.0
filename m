Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0DE1F8B22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 00:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmmLY202LofKuBs59EB6WVz6oSo+alU8SzivawQ5ylQ=; b=e93ka5equZsWGC
	6RvoM3hiIXwBX1EI2YCulYcJjTITlZGt8zsfwfBQ/ZZH0cfLj1JkMSahmX/+YhAlaDWrWFISYO2/Q
	yAcmIsjHqhzbmQKeTCl0ZuPkdAi1kJ39xBc7JvwH4q2xe98UiP57r7Qe7F54eM2czEIAW+OAujuoi
	vy7RtakDBtA/M0XbAhjWWn1TeedWog2spuNv1KAsp9wp8sRraIlBKoMusJPImkDtlfuiMksxZyy/V
	CIr0UPI2/cx6ET6ll/dQHWNHkA5HmFao0novvMT+soFRpGjLPBTbBMbWehhxCmW88vIgKnb3Mmjx5
	6a5vx+6+xHuUUbQLbYjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkb7y-0003k4-SD; Sun, 14 Jun 2020 22:29:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkb7m-0003jZ-2P
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 22:29:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id o8so3337329wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 15:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version:in-reply-to
 :references:content-transfer-encoding;
 bh=YZHcpf8DNvlXC5yfdisg9cr+tmt3ST6TkmCVFSnhO/8=;
 b=g54lf2QT9rPhzJDbCi26meLuZt1sEbto6sTuU73JIL2K5swRE6AMvZy0xrf1VnpDML
 tlpMmJUznbHvAGFMaNOXX5jay3FvZeq4HGkb9vA7lBeaYgIbsdxcFDm+rUNF7o5cHb5D
 hi8U855hjlvDXmCQ5xTrwPRinXoR1klW8bssz3+HE8z9OYUPdtiVcOls0XI6vGJgGIrf
 QNHOT19n2O3OPDQ94zGLrmmYUEbHKUrwksMYuVVAKrFS1US0tryrfsog/yphNH8tN+8/
 ujbwl3xc6OZehktFdrx96e63VsbSHAwPRDOdzXjUO3EZCvyu1nan5eGxVzVmk5c4WXq9
 HEWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :in-reply-to:references:content-transfer-encoding;
 bh=YZHcpf8DNvlXC5yfdisg9cr+tmt3ST6TkmCVFSnhO/8=;
 b=gGmIakrcLvA1My+GEfEIucuhop8q7FXCEtVIY8P0xECY1BVy2MS7pUPYK1nkUROryk
 voT8NVT0zLWTKrzuXvqDu8MQGrWQnhOI45hw0EnM4/5wSRBMS7hjNha5wnyno3m0saJN
 PwDYnjOwHJXEIe2+uYqNjPZANcSYVjzOQg87vvbgFXEDalc8rNbahSYLrflvqAuR62lX
 9t8X7ePe48xkQjc6drPcWvBfk6baFLxQmY8O4MJMeWhJlck7uVQtz/Fr61DC6eWYtCPT
 bG6no4M9uDEWyqQ/EKVh9ub/Rifp7+lgN+yE96eusU9icFdrFCt72Vdom8DtYOIQIhQ+
 EGiw==
X-Gm-Message-State: AOAM533SMVGg5qq2i7Qt2sNLtAzffD4L08ICLZLvRquoTPqyVbJop4Ou
 jj3qPuP1rd30ctW2cCyShhY49Mge
X-Google-Smtp-Source: ABdhPJwh5Yl1QZFBQcP4LeiWap+awXl5E3ChMR1ND8VWYlavpkWJEi/QjLO1AkLzkApWK/8+6hVcbg==
X-Received: by 2002:a1c:3987:: with SMTP id
 g129mr10014691wma.139.1592173748514; 
 Sun, 14 Jun 2020 15:29:08 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f185sm20721079wmf.43.2020.06.14.15.29.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Jun 2020 15:29:07 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Specify switch ports for Luxul devices
Date: Sun, 14 Jun 2020 15:29:04 -0700
Message-Id: <20200614222904.3166-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
In-Reply-To: <20200608093733.20190-1-zajec5@gmail.com>
References: <20200608093733.20190-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_152910_113105_61252EF4 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
 Hauke Mehrtens <hauke@hauke-m.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAgOCBKdW4gMjAyMCAxMTozNzozMyArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIDx6YWpl
YzVAZ21haWwuY29tPiB3cm90ZToKPiBGcm9tOiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVj
a2kucGw+Cj4gCj4gQWxsIHRob3NlIGRldmljZXMgdXNlIHN0YW5kYXJkIEJDTTUzMDExIChyZXYg
NSkgb3IgQkNNNTMwMTIgKHJldiAwKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVj
a2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gLS0tCgpBcHBsaWVkIHRvIGRldmljZXRyZWUvbmV4dCwg
dGhhbmtzIQotLQpGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
