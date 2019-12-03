Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC8A111B16
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 22:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWoR/0eutGcHMIF6cagduWxyIYVrAAyevrD+dtc3g4k=; b=EKm8o6pXeM+ngC
	QlqbpPHZTRVDeEYgY7P38xS0mY4MLKEerSyW1HGSmhjfsw80PAOzqFN44etkuVV0LJLXsKrlZlvpa
	5o6eHeBSZcPH5Z5+5uOYAPEaBDZWSP4RdYoRZePQ9B+cM585X3kScrphO81dNWapF7fC6Mf2pBuiW
	hiKaw0kH13wn+eIJl6uH/NA/rfnlYwgn8M3scD+beiB/E930oqYV0G8bYs2BLxyzWLmQTniuplQdw
	FUqc+9k+qURmPNYtoAUO+mutrH0Qr99CQmdZ5acOwWmf4BDzwgUUlFjd9zJ5qA25UgFIUOq6T45pS
	pRl14GqIcugCWMdmPVow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icFsz-0007wi-95; Tue, 03 Dec 2019 21:39:09 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icFsW-0007q3-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 21:38:42 +0000
Received: by mail-oi1-f194.google.com with SMTP id c16so4835853oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 13:38:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=F3uHqZbzedLUE0xuUfIMpIgrRc1NYArGkbcNIpnaHjU=;
 b=m7JEWFJ3a4f9Drb0a5COk+V66sDascPNXcS5Cs+lqRLPtRoRP2Fi6D8F7Za/Hgl2gJ
 GXuCpswe8gVe/ie8ZQgQMD1bDt7P795u58ak9n7pVzYa02y/uc6pT6jvjH4R6p1xMPsC
 lsIT2ujpOB+V3LdEi0eI4Un2qiYD6s5pr2jGvKbvIMwpMMRHlT/IomJii4zuP4poxDLU
 6nXdyYyWVAmftG9OUexzRCI/IcHr+YjwQZAnXIF3MpPsaEanlZgI7lTC3b0ukk387fH4
 n68Leu20GKPcQhEZhgkddEFvFUpOgagWVMM+sGu6/W2wmtdHv1/68rTqCLvVPYNJAp3E
 vbGg==
X-Gm-Message-State: APjAAAXvjzJ9i9ZTndWn8BxO3MSRs5v9cJQ/9CV/CEUWb4ivAOHxLAaB
 5rCtBopbKRiV7bzclwR+NA==
X-Google-Smtp-Source: APXvYqzrwgm/HxFVUZ352gIniGDYj8kl0CmjIYTrPSpfZC7zbhYc9s6vYb6cfEfd3T4Cfiq4raE4WQ==
X-Received: by 2002:aca:889:: with SMTP id 131mr75288oii.3.1575409119897;
 Tue, 03 Dec 2019 13:38:39 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o2sm1582504oih.19.2019.12.03.13.38.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 13:38:39 -0800 (PST)
Date: Tue, 3 Dec 2019 15:38:38 -0600
From: Rob Herring <robh@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH 2/3] dt-bindings: serial: lpuart: add imx8qm compatible
 string
Message-ID: <20191203213838.GA21567@bogus>
References: <1573995530-14573-1-git-send-email-aisheng.dong@nxp.com>
 <1573995530-14573-2-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573995530-14573-2-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_133840_881161_7F66B912 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 dongas86@gmail.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 17 Nov 2019 20:58:49 +0800, Dong Aisheng wrote:
> Add imx8qm compatible string.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  Documentation/devicetree/bindings/serial/fsl-lpuart.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
