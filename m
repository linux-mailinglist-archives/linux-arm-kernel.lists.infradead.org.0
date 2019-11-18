Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68C91009B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 17:50:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VrYEbIGPnj2NhV518uuZtL5eweLx7REihtcLeTjVbSM=; b=HFJzT3HRDD5KUC
	bO2AM+yzTm8mnamh9eCesccvEgLv9uc/gJLFMRYtNEfeM/q+2GVTnzOp7vuKMZwTIkLvTylTbTPZ3
	LMOp2jwaNfVOwUqkfNvBoLpnB7E2a5OdOUZ8iKdVk37NwiNivlc5K3mXIJMX9ITk5KH1eatwK1HQl
	CG5bzya+UJo6BEVbmWY9BVOo2+sNT12k5naqLf8rI2fMsX2aKuKtmcZNjz/SFgB/SZpHgy40kQ5Hb
	iRA1kKIruXCDP6ce24q64Ycu+pVCM9P35jXvv/QlL6xJp55WDcGyQBQkh2n13wMMYx/pjB73J/qjD
	1G2++GFf9PfmZjoSdReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWkEO-000428-BA; Mon, 18 Nov 2019 16:50:28 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWkEE-000410-Gh; Mon, 18 Nov 2019 16:50:19 +0000
Received: by mail-ot1-f67.google.com with SMTP id w24so14620898otk.6;
 Mon, 18 Nov 2019 08:50:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5NYQIVzszlovCzGCoyf9SHkjEAYAPxgYWsdxQCoKIq4=;
 b=WImTOJZP3yNjIeXxE5FR9RkAmajgGNsl2T/+MSS0yYKGeWtGaP/P7ri9LE30aggkwn
 l8/NV4z+dMqR0ryUECn7sCmnKcF/4AKvZQps+/x1ywFTgDxmDCxph8nHVWSKKpwqsVf3
 XV6ddiqoHVEQWhY6FlAtxNPLn5Ml8ncWqyAJuok09VK/ZjCwkHKZ4PXM57hX7Epx2EZx
 HpLQW0MJ+iQgweMybP0h243YvcuOEg5FFq7uQWiBEeFK8PhfNpp90KpHHZc02FZrcNqp
 mz//8jCX7EUmpwwQdmuWfYfBlaMnQRbTu7E65TYfSKNv4FdTsoSUcUcUttyUYq8PqkrC
 vMHg==
X-Gm-Message-State: APjAAAUAf5X7Yw5Sg8lwb6g3ia3J/CwUh5vp2L8V1+IC/wBUuGzkj/JJ
 1b2Ob0twAsqOrF6OUtkPcQ==
X-Google-Smtp-Source: APXvYqy5fyTYkoXXqqwQ0H9dOLJstLheW2bjF5U1SrvtNLNVH/MBfBQlyKUyfzD0Wr2bOMi5c0zc1g==
X-Received: by 2002:a05:6830:1e4c:: with SMTP id
 e12mr162673otj.358.1574095815692; 
 Mon, 18 Nov 2019 08:50:15 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s133sm6229914oia.58.2019.11.18.08.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 08:50:15 -0800 (PST)
Date: Mon, 18 Nov 2019 10:50:14 -0600
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v4 01/11] dt-bindings: phy-mtk-tphy: add two optional
 properties for u2phy
Message-ID: <20191118165014.GA3621@bogus>
References: <1573547796-29566-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573547796-29566-1-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_085018_588703_85551597 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 16:36:26 +0800, Chunfeng Yun wrote:
> Add two optional properties, one for tuning J-K voltage by INTR,
> another for disconnect threshold, both of them are related with
> connect detection
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v4: no changes
> 
> v3: change commit log
> 
> v2: change description
> ---
>  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
