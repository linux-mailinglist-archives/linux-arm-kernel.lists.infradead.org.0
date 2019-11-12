Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E219F99B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 20:28:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTS1TY989XNSRf5BIpc306GuC2iXBx5Dr4PsYO2yqaM=; b=IUFKVcDIF+3wpk
	m7Akc0MdnJLCIKuiRFy/GIhk2Pi4l5sM1jH48L9J6gb2KDBye9P7we19KNjwlQ7Hf/rSJqWxp8hW3
	DuyQv/9DfVvTLA99dkR1qf9DwSbY1Z62cdb1nmz0t2fYNFZ4ymMktYkRZx7nOLZhp02Ofagr4+pDC
	hpYHwYaNbfDDSVLFUBbgnUPZydleHRwr4qjza9sGf3cfZdG1EVQ8rBHlP0PigYZYbIWXCEU+DNqiH
	w7oDHGeX3tFv7D4d6jMLWEhFSTJm1BMNCbELAS6GT6Se8m/pF5ri16brZxYpdRhV1vBk+qVsnXXqn
	7foXO9pG3asUrSXBA/lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUbpT-0007Bh-0v; Tue, 12 Nov 2019 19:27:55 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUbpM-0007B2-1g
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 19:27:49 +0000
Received: by mail-oi1-f193.google.com with SMTP id e9so15910758oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 11:27:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Y4VJU4JPIoN8kP/oz54y8Wq1pxD+B52sbN7PsTOLQlY=;
 b=BWIhzaWWC3E/xRkrm1y3x6UhqN+LnKg1WDblzhdlOBAF32Cplre2gVw32uuFeatW12
 B3GD9+un1tdPUrpFADX5xcrCGJYu78dFk2tcFYGE8KhftrgmZPLWEwR8fb86RZZ0WI2Y
 Qjo0XsTtawXDfssAr5x4YYradrg2/mIBYcdlz3sYS1mtF40q2Lt2yB94mXIR1Slt7qBv
 kXdDcinFdDSCDElnOwVH1vF0bJ65zw0WQ5jtiOMeqHf7wzADTEa/RfZy2U7vPmlcypRw
 W9LA8pN+Ut29fjnP1iigBOtRKlUEkL26vnKMaW8YhyAPz9DfCYopPw25hg+y0U7vwlwQ
 T3IQ==
X-Gm-Message-State: APjAAAVHzphWg3ioaFZpgfdjlMaaCN/wm/E+LkR1GtOXemRwEnGCCktL
 TVAUXkcw8vqBvl73ISYa4A==
X-Google-Smtp-Source: APXvYqz4Jkfw6OOk4L5JFnxQar5zpZUQ12T/aVbn6qghLtQRbJWl1rIMeQ2geyDRfOhX2lw8P+1LcA==
X-Received: by 2002:aca:5006:: with SMTP id e6mr501570oib.127.1573586866587;
 Tue, 12 Nov 2019 11:27:46 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 202sm6330662oii.39.2019.11.12.11.27.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 11:27:46 -0800 (PST)
Date: Tue, 12 Nov 2019 13:27:45 -0600
From: Rob Herring <robh@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v5 08/15] dt-bindings: dma: ti: Add document for K3 UDMA
Message-ID: <20191112192745.GA20639@bogus>
References: <20191111135330.8235-1-peter.ujfalusi@ti.com>
 <20191111135330.8235-9-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111135330.8235-9-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_112748_092467_BF245CB4 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, vkoul@kernel.org, robh+dt@kernel.org,
 ssantosh@kernel.org, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMSBOb3YgMjAxOSAxNTo1MzoyMyArMDIwMCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6
Cj4gTmV3IGJpbmRpbmcgZG9jdW1lbnQgZm9yCj4gVGV4YXMgSW5zdHJ1bWVudHMgSzMgTkFWU1Mg
VW5pZmllZCBETUEg4oCTIFBlcmlwaGVyYWwgUm9vdCBDb21wbGV4IChVRE1BLVApLgo+IAo+IFVE
TUEtUCBpcyBpbnRyb2R1Y2VkIGFzIHBhcnQgb2YgdGhlIEszIGFyY2hpdGVjdHVyZSBhbmQgY2Fu
IGJlIGZvdW5kIGluCj4gQU02NTQgYW5kIGo3MjFlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBldGVy
IFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLnlhbWwgICB8IDE5MiArKysrKysrKysrKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDE5MiBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEueWFtbAo+
IAoKUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
