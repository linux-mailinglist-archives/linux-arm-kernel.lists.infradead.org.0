Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C462FCE8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 20:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnILwyE0qvOl32cBOikuRhEjPVuCwbT5eFfc9H1bmvs=; b=WDg9Mnd2n7ouQm
	gq4+v0dlrD8P0R7xiGQNgh99M3hPDBvKZ16Pcm2V09R74I/Mq5jhLzEzHVNpLAGIrCSKELxKEx3hI
	cc25LfMNG0XtwLRMSPOJgEZCoxSqdPG06FXdXw73HL1LNJ9Opbd6ZO+CylRbbhCGST6ASlERvZcl1
	MUMP5Rfw7ecBHP2v0FhpP2e6DDvPF3LytdtXiy87xCmv6+BDIh8qPMSdT74iKff6Bu6PTt5E9NeBR
	y7UcmkGAI+/GcvblKmr0OoAsa7AEAsBQMaK4i7QQfFTJrR113CiQZYgS7zwqpH0wVYERTibGg4AYc
	6G/9fCeVazBmltEZbsRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVKZl-000244-64; Thu, 14 Nov 2019 19:14:41 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVKZa-00022h-An; Thu, 14 Nov 2019 19:14:32 +0000
Received: by mail-ot1-f66.google.com with SMTP id r24so5833263otk.12;
 Thu, 14 Nov 2019 11:14:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kxLLQE/JqRR/Jbs96WVmwWzDnecL0QTETfc0TZ/qlQc=;
 b=WXJCaLavevKnHW3GcXy0SyRxY0yi+f2h1xfzw8IPIy2cUHow4RWb/dg4ijvWkup6Mt
 edgk4/tce0a4DozRHaLfIQWAo76rLTM6ThUngM7NrXej/eFly2wcGfnJOaO9RNMHj9st
 olYdiQhMjIIa/xgdpZP/GyEOXsPH0FRmYqVtkB2fmyzB0Rj/8D0vQPor92Vm2aZ7BBCe
 GKvZwxamDR3Ti28UTVhKOD0gQlnJBa4Wxzi80GvlQJQcRQ64GGYl3Kl8+YGkYsU0B5q0
 S5mt8kWBMUMqxFm6F3Yd2bTif/t9Ij0PA/NTyeHXG8ZNbUtdZUczRBkJEdNaEDnrYX4a
 yocQ==
X-Gm-Message-State: APjAAAXKKf0N8eF1ak4w0weASdGvIbFTQiSaWLYNIrvYKBYu4YXKWBlA
 lnRuwxkIWariz4u47px6Jw==
X-Google-Smtp-Source: APXvYqyfJ87LD/QB5c0TMX/wIWoYP6o9C36/6w/reacZ6clzrv95SPvMKEP9+KvMr6GemvBs7XNNOQ==
X-Received: by 2002:a9d:4813:: with SMTP id c19mr8176906otf.337.1573758869585; 
 Thu, 14 Nov 2019 11:14:29 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k18sm1965555oij.32.2019.11.14.11.14.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 11:14:29 -0800 (PST)
Date: Thu, 14 Nov 2019 13:14:28 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 6/7] dt-bindings: arm: realtek: Add RTD1395 and Banana Pi
 BPI-M4
Message-ID: <20191114191428.GA8113@bogus>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-7-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111030434.29977-7-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_111430_373032_BE502D14 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 04:04:33 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Define compatible strings for Realtek RTD1395 SoC and BPI-M4 SBC.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
