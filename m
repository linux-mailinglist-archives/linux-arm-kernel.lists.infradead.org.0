Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F51D285A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 20:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=112HdAZZd0HiH+v07RFFEBrlWIDF/2gQ9MVmMLLDHw8=; b=UXZ9rJAHQaZ1BZ
	53QQ7jIsXG6cf3m5QRb+FhAKcP5KvdVv9RXjYThZe7JI/k7Zf8jT262aWRJJjj9PkRErIEwusftAH
	wfHElRc9Qo/Dm1Ov1+i9Np+U57jVWLF4WB6U/Dron7MPURxbO9rOea1kDd3NEXPivsHIMML5pIAYK
	Lk2IwR6WKrjLqcCxQMpPncGq/oauLzSrARkgOCVZcr2I61WhtXhLg0NiIU76Qr7gD0DdTs0Q+Jwv3
	4H6r5kf02zrR5kfiBWkVrMrINzB33V1FJCaEPusCe8ALH4RQ1D1eTJ4sOJpOq/NBTsIpa/E4He4Pf
	qEWSoLTDF3aPhLfFReAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTs9x-0003Gl-Mi; Thu, 23 May 2019 18:09:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTs9c-0002yi-ES
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 18:09:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id l2so7283417wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 11:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=z1bHAtbIn7rSn47PzmH0efg4xnX6wgVivQeyJp4q2b0=;
 b=BfW+Ptbz0yweHlXl4q8XNk3KTCoeAneQn1AcFc1LH9Jftou1T+9hajJIXqeiIOOvhx
 A9FrPd+LKczQZEamBkt9TEL69XEBU6uk9eUccMCbM0WwWtvB8jkdfYTcgmeeJp0uLWLH
 hbdZBTtzDfpS9lzZfxAq+CSYfQztc+LxtEwGZUKDcsW82prkYF+h+p90WCGuKgT1nCJC
 VoI0jXoqRCXxtQX5d1sLTocYlpKVGMNrZZPNeTjaNRplBrWp3rdwZlkWuG8yRWnPW+NA
 VXpVLYFXdrY3e+mQT6bUWxTfYHsQLorEVFPcjodVi45qGBWXdUAN6KeTYmjEfIcuz0N3
 kgNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z1bHAtbIn7rSn47PzmH0efg4xnX6wgVivQeyJp4q2b0=;
 b=Dt9SAT00sMZ3Ijh5FV+N99RdMyD28vkGTWkrpgrGMI3HP259upZteQcyiPEvSzUTdR
 TFD1UyTHbrPcy/3NpAi5ZhKBaclVal3fHhekYzbvIEQnMCv29OzSeyUJjGLY5WQ3v0Lk
 okm1Bo1bVEr2rEkjXY5ahDZhpxGmAYmaAogIuD6N7kNb0I09qCqLPTlDiEdbMGxNDroT
 M1u16QBCqvkyvGMZIGTxEX2LGZHufy/nw3my0hKEpscepL24IZJIUwQkxmCIFl4sTf2Q
 L1fCYCYyLBVeYU4IopJ/IFdH6pd/sNPNCIhUe+plBjznYxQTubblHTe8CdrOpkef9ujY
 vOtw==
X-Gm-Message-State: APjAAAVht/uf3gP5Taj4NrFVYriCkinh+G/5Jx+7p/2GJQrCWDPraoMP
 pn19CeZr5DDHgC0zVeH4t8Q=
X-Google-Smtp-Source: APXvYqw2taeMm2hx3sf4eipJMUoRMrxDqWF1PlN1DCdkzDGCEN6JLPU395wC4e7PGcmnf6yrLUyUng==
X-Received: by 2002:adf:83c5:: with SMTP id 63mr30194086wre.33.1558634962910; 
 Thu, 23 May 2019 11:09:22 -0700 (PDT)
Received: from ?IPv6:2003:ea:8be9:7a00:3cd1:e8fe:d810:b3f0?
 (p200300EA8BE97A003CD1E8FED810B3F0.dip0.t-ipconnect.de.
 [2003:ea:8be9:7a00:3cd1:e8fe:d810:b3f0])
 by smtp.googlemail.com with ESMTPSA id u2sm42511817wra.82.2019.05.23.11.09.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 11:09:22 -0700 (PDT)
Subject: [PATCH net-next v2 2/3] dt-bindings: net: document new usxgmii phy
 mode
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 David Miller <davem@davemloft.net>
References: <9d284f4d-93ee-fb27-e386-80825f92adc8@gmail.com>
Message-ID: <60079a09-670b-268e-9ad5-014a427b60bf@gmail.com>
Date: Thu, 23 May 2019 20:07:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9d284f4d-93ee-fb27-e386-80825f92adc8@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_110924_481503_714EAEAB 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new interface mode USXGMII to binding documentation.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
v2:
- binding documentation change added to the series
---
 Documentation/devicetree/bindings/net/ethernet.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet.txt b/Documentation/devicetree/bindings/net/ethernet.txt
index e88c3641d..5475682bf 100644
--- a/Documentation/devicetree/bindings/net/ethernet.txt
+++ b/Documentation/devicetree/bindings/net/ethernet.txt
@@ -43,6 +43,7 @@ Documentation/devicetree/bindings/phy/phy-bindings.txt.
   * "rxaui"
   * "xaui"
   * "10gbase-kr" (10GBASE-KR, XFI, SFI)
+  * "usxgmii"
 - phy-connection-type: the same as "phy-mode" property but described in the
   Devicetree Specification;
 - phy-handle: phandle, specifies a reference to a node representing a PHY
-- 
2.21.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
