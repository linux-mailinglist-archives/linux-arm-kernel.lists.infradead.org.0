Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106821C2DC2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAG5w4sWvaPWFKhdVSe06mcJlLz7uYR2vw0BFzr/y1M=; b=KakLf5VLgT1MuX
	fPfamKqtiXoi7Jx1kr5vzCTw3tCKShdLm1dyV1b5z8aF+td++fAoLQig31IeUB6Aaqgj6h1HrpEw7
	yZRonGxv3rl06BQq1jRj5wUyrqWEQOmjHpPQujqtydRYoG+YjDtZqE/LM1QXF65jG3mEdJnOPN1Lg
	OuxE3AVdMeo86rw9ch+z0xh/3JxetoXLomIZZzn9PvDzM8KkLbfTahfoKZ7AM75pq/HdWarOObmqn
	Y5NOx1ocJa03cWR02JqpMIzA/1cNWy+NI4SSclFnlE0C9iAlVkAGOJPZzqgGp9895z1uwO/VxWtBZ
	Xi6vBEkYJshoP44Eqm8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGzZ-0007sL-FB; Sun, 03 May 2020 15:57:21 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGxf-0006LO-EP
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:55:26 +0000
Received: by mail-ot1-f67.google.com with SMTP id z17so6778741oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 08:55:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WURwT71swtVFaN+yXCKfqBj9g3Oagy9nGbGNfJs/ttY=;
 b=ZKmulD4/4iLtYArrUS6Zkl6lVLUGCgwi32rH3a4R4KSg7r7wxXDmrgOUtc+cHR9uvD
 HUFcKXRfo9DLokNiUQM3NKm5UKjEsChZOWZc0/A9/IS3H3e6snhqlzxLCEHDXWOeyHPR
 2f5bnwfKTxEzCM0W3Mj0DHsjaifZvvcycd8+i0dn4msjYHnQ7NXoiceyrfqzR+LJTswo
 r2hpB9+F3LyuHnorW95Pld5RKgP+R3sc+Wqk8g61T64iast+5Dw/P+NrtwL0WtYmAhVG
 RUj/FX8c9tKMVasysQD5I/OJ16sL1Eao8OqltvmXhsfWPN3hJc2h+n3FEsca80n+I0NR
 SOAw==
X-Gm-Message-State: AGi0PuaCyvyIyKeeK/6Wxtc7Vgqdszd7YbKH6mGi2BVfGFdMSq0KuSVr
 BZXo/nYu1XY3nEehqygx+8d/YLk=
X-Google-Smtp-Source: APiQypLPrNKb9hcMJW+6irrNT4WLvGBks0DGiqn8/nZf8bAIh9cn83ZuTnXYpbBuQ8iNoNxoETKjWQ==
X-Received: by 2002:a05:6830:1290:: with SMTP id
 z16mr11618297otp.78.1588521322109; 
 Sun, 03 May 2020 08:55:22 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k8sm2491054ood.24.2020.05.03.08.55.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 08:55:21 -0700 (PDT)
Received: (nullmailer pid 20149 invoked by uid 1000);
 Sun, 03 May 2020 15:55:21 -0000
Date: Sun, 3 May 2020 10:55:21 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 3/8] dt-bindings: net: Convert Calxeda Ethernet
 binding to json-schema
Message-ID: <20200503155521.GA20089@bogus>
References: <20200430211054.30466-1-andre.przywara@arm.com>
 <20200430211054.30466-4-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211054.30466-4-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085523_524370_8E9FE8C4 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 22:10:49 +0100, Andre Przywara wrote:
> Convert the Calxeda XGMAC Ethernet device binding to DT schema format
> using json-schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/net/calxeda-xgmac.txt | 18 -------
>  .../bindings/net/calxeda-xgmac.yaml           | 49 +++++++++++++++++++
>  2 files changed, 49 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/calxeda-xgmac.txt
>  create mode 100644 Documentation/devicetree/bindings/net/calxeda-xgmac.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
