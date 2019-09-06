Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF52ABB05
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=clNF4VtknbO+KtZEkRoK/9b1VGbZMrxHCDN6T36h1kk=; b=kX2UlCmvbvMSy0vc543hZIIlbM
	1U7KSXmgyUydFkiUS8Tjid7jEEYrT49Qq6VqPJUMlktEIIn1nWf7fow1NWjI0L7CDa1vSSiAryslW
	F9O8mSXz2xvtqLR6/LYBXKQmRrZyhngyvu2DDIKOMA4Ds1zlbRu4Qn82zAcfaoBZ3F/aIT9yeaWUj
	2G+prkyNDZYSiRV9U6svsw8/eEDvggbqE3Ampi6BVgt9dYPBG6So1xZsS5N8yCDKopTDYbKjEhltE
	hFiRGmzW+Vi2+MQoWuGLGtIKIZ1/YjAVcPFivtaH4JZDTS4o3YStgJCQP08EtpukK+s5c/lQbm4Dr
	Lm6FsiGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FJo-0006kn-PM; Fri, 06 Sep 2019 14:34:32 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FIn-0006C6-L3; Fri, 06 Sep 2019 14:33:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id h7so6834668wrt.13;
 Fri, 06 Sep 2019 07:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=l8lFr4ZwIttjBYV2ogrlwO0w9q8AMXRri5mgGEzyZHU=;
 b=mFdXzWhACWV++JfzBVMl/qtkaQU/q8GXKi6aMfmFvNTy6iP8Lwg8AcN56qGoxFjo0N
 gztrZNcB3uUIKF1eYTvjtxDzZqZ0zKaXHaub7uSy26zm8+HGFFea9PO2ntl+uspZOXGp
 y+gh9e8U/kKF6TZuNMuXnNlLUMybhnk6T4zfqP4oDjU+AXSEeyUfRq1EY3neMOBsoemJ
 CfXj65oPwNM+6F+Wf1g9y1VQs0j0gv3kJl2AYBbxPk+XDS5ll5cdgiHE/KRQGYowlvar
 xlFcu9W8tPLIzkN6coihm0A+KMEX0D4lE2avVDvrlPm767iD3tOemnMENJmyvHeQ6PY8
 GbRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=l8lFr4ZwIttjBYV2ogrlwO0w9q8AMXRri5mgGEzyZHU=;
 b=CyeJcHrvxxcgeAQZLP4S4Nv0KWmwvIW+W0f1DIlo446Dp/6Kp2pJGsbZhlU/Ep9Kwt
 Fd+pcePxJN1eLTmlICRR3GK1tiZXssoM7cPNo3uGWnLqrn723+lhlwbUIzaD0JN2a+QS
 AwbjCnp/i/izsRLmO1v9mCbTqRV8dMDmA+PD94wYVVzDMiUboHjpzExqhWej0xtqo3WB
 4RNCJhQbiNuzAlEwoxWNQ4hWjgSxVxx3J7UE/3HjSwsc49YXsCo0scmg1d2tcPwlSI0p
 feCOrTl/cFXCdrKzPvLBHhvUxx8Ui7CGxPVri0SaCDdCrbCYYNVXAFjhTf00XJrDxWXC
 PqcA==
X-Gm-Message-State: APjAAAVD1uIa+dLTyKUzX94j5P6Ck3jNEhgW7NrfzcoIfKZCBSExAQMK
 8cfBQuzPYM4XHNEDN+bRRLloJGDUsej9ncLa
X-Google-Smtp-Source: APXvYqzBAReJq+3peN16SujBUA+cXIgQaYdFruB3+QzVVcKMrYkBIGnOlKtxgEC2JmNeefOXSa1EKA==
X-Received: by 2002:adf:f404:: with SMTP id g4mr6931930wro.353.1567780408517; 
 Fri, 06 Sep 2019 07:33:28 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id s9sm9300198wme.36.2019.09.06.07.33.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 06 Sep 2019 07:33:28 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v3 2/3] dt-bindings: arm: amlogic: Add support for the
 Ugoos AM6
Date: Fri,  6 Sep 2019 18:32:33 +0400
Message-Id: <1567780354-59472-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567780354-59472-1-git-send-email-christianshewitt@gmail.com>
References: <1567780354-59472-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_073329_840573_79E56019 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ugoos AM6 is based on the Amlogic W400 (G12B) reference design using the
S922X chipset.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 325c6fd..2ded61d 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -139,6 +139,7 @@ properties:
         items:
           - enum:
               - hardkernel,odroid-n2
+              - ugoos,am6
           - const: amlogic,g12b
 
 ...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
