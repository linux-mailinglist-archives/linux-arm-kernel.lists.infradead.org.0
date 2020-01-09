Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BED1356A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0Rd0PQpPDcTkpqN2OML7TJhET5iOaOZU2TP8+3TWxs=; b=BEfN8DJuJRzKB0
	53TbeZlpXz7wEZ4QB1rJsYBZCS9m4PDg9dNSLeaz3IRMuFvLIiWcrX8+mrNUY39oOk7rrEPvnfu0Z
	3kOyh6j7vIxGCC0iZBPqaeuxOf14v/oHyucMFtjgTgBotiMovQgE3c8TYCw4GXyL1bRr2XxByNw6o
	nl09ZQhosptHSCPvyV7X0s7Hq8RPd6XsRP+Rcu/4Sxz+b6F48+KSuIO9/67NIiWAGsODGSuYaCeuk
	LeFTr9Rea3FGJ604h1qr9xp8+XcsrdwrHrb+fTKZH2HIrpCtEbpQJSIBgYupXb5ToBh1xYIoImu5B
	k79SRm2mJBq+QJ52tjXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUrq-0001BT-R7; Thu, 09 Jan 2020 10:16:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUqq-0000Vb-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:15:44 +0000
Received: by mail-wr1-x441.google.com with SMTP id q6so6720376wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 02:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cskzhIjwtS0ZVRi8zMZa+kHk4M1kBjG50N69LQL60P8=;
 b=h0ow4VeStV9ER/XHasMs74E0+JCwgBvbicr55G654K+QgM0E3o7aCk/LftohaQ/mam
 K/oPl1DN9ogDVNFnXQbG619dEI3IiXEBVkaAAHXUe7T8aypF4zBkArvDclU6nylS3EZM
 RsYFqnDW/LsLHvnfFU1VGIYFweyPCIYpDVrRkeaGDhB5ogdRzQQHJFTmBSANZKatHOHJ
 l7suu9Wc/eeOJCwarOUn3veAcF3NA986bAtFIgIh/Xi8GhKX1w68ZtCg88Sk7IclgS5v
 FaOPmjwSuVB0QSRe/FpXDssCBKIP/At2DrBAd2pK7bu89NvewLGccxwZioH4NbNJ8yvW
 2kkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cskzhIjwtS0ZVRi8zMZa+kHk4M1kBjG50N69LQL60P8=;
 b=eGkSK1E6C5SEt7nU9ZN2ACtmT6xzCV63K8mKxFVHinkuA9q7wWSM9bjxbUqS0YykcN
 UQ5/hI5M5O2qBjNkE+CIxpZVsQVtMIPNegscRFNos8TflJ0UDysodLxLIOm7DtyaIbxS
 fnoSY7JRxkRlKE9Vs8BBcwBa62b0J9BsweGeGYC6TiB/2J459umJrdoaNoaLWPmQt8Xz
 8yWRrGGto76X2LbO2Y0F23jag0cPWcPJe11zHMg38UzsWWvrc1asmprWEPJt3IOfJyFN
 S3vQloSdnyy5kn6SX1d4KyQJf8DUsGFcFQjlYpDdFcN1mjHxp6ZZamcrncGeTZFyme6v
 xY+g==
X-Gm-Message-State: APjAAAXeFhr+Ry57FHF3zse7hC9bmGSevk3TIvhVuoaRQvZySAqIaX+R
 /7ad5w5kOaTLomElonJoEJs0BD5KaX/h8A==
X-Google-Smtp-Source: APXvYqwBJeqcb+JtzqfcXa3IBx+RAeZpEMUk+jeaEw1/iu/wKVv0xRKabBxEgIHfrQJo/hYAfvxhCQ==
X-Received: by 2002:a05:6000:11c5:: with SMTP id
 i5mr9833559wrx.102.1578564939054; 
 Thu, 09 Jan 2020 02:15:39 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q19sm2250460wmc.12.2020.01.09.02.15.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 02:15:38 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
Date: Thu,  9 Jan 2020 11:15:33 +0100
Message-Id: <20200109101535.26812-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200109101535.26812-1-narmstrong@baylibre.com>
References: <20200109101535.26812-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_021540_415332_9C2C1C2B 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tim <elatllat@gmail.com>,
 Jun Li <lijun.kernel@gmail.com>, Dongjin Kim <tobetter@gmail.com>,
 linux-amlogic@lists.infradead.org, Thinh Nguyen <thinhn@synopsys.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch updates the documentation with the information related
to the quirks that needs to be added for disabling all SuperSpeed XHCI
instances in park mode.

Cc: Dongjin Kim <tobetter@gmail.com>
Cc: Jianxin Pan <jianxin.pan@amlogic.com>
Cc: Thinh Nguyen <thinhn@synopsys.com>
Cc: Jun Li <lijun.kernel@gmail.com>
Reported-by: Tim <elatllat@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/usb/dwc3.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
index 66780a47ad85..c977a3ba2f35 100644
--- a/Documentation/devicetree/bindings/usb/dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3.txt
@@ -75,6 +75,8 @@ Optional properties:
 			from P0 to P1/P2/P3 without delay.
  - snps,dis-tx-ipgap-linecheck-quirk: when set, disable u2mac linestate check
 			during HS transmit.
+ - snps,parkmode-disable-ss-quirk: when set, all SuperSpeed bus instances in
+			park mode are disabled.
  - snps,dis_metastability_quirk: when set, disable metastability workaround.
 			CAUTION: use only if you are absolutely sure of it.
  - snps,is-utmi-l1-suspend: true when DWC3 asserts output signal
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
