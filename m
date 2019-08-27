Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7542A9F60E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XilgQvW40TnzLHa9BFAAZAhx3rusVwQe5C2LaIfH3b0=; b=ULMDzPiYT3xNfY
	t4cz2Rz81Q1TI/1H1Pl/dKbuL/D/1F7TJavECFYYlj/7cr0A4aFw01siLLkc3QEf9x15/P7KYV0Hq
	i95wdh55ZtfeoNx8xzDkXQr4SQUt3rDeeC5786V8a6e0fFzyf8eIcQnUBnU0Wo9rJWN/gK2mHiyBW
	8PpljVC6i/+Evv8NXpKtI8gWMMfzGU0NqYuOTojAsRM6xnUYty9cPkQP4T7/45YjoYCocX059y01L
	dcr7yV+OLClgcv9cNqKIFKzRir0ojeAIYcva+hgKQZ9ROLjoIhP5DAbILrMDboRTmfM2RW/mnd4lg
	/aF8u8ccXBF+ueFt/t0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jt1-00087M-Pk; Tue, 27 Aug 2019 22:24:23 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jsb-00086r-5Q
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:23:58 +0000
Received: by mail-oi1-f195.google.com with SMTP id n1so551333oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:23:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ak1Ltzk+8Oi0R4K1Lp5OobPOn5sQccTcHrAqgoaftJM=;
 b=sdV7KARl2TFKPFs00bGIntbxeEuTBxK0gw/wSc/HfIXnVao0RvSPG9gOuZ7FFezgo0
 p1C9IbFHixQCtPPaplCFCY149L7I2JX4LxGmFawrFXFwybeqAGmoDrAO6pVrXnzIXJaj
 Cf+GNBybAQqBPv2wSlgMnSn2x4+iQxDLLE3ZCBkE8Uftj+QUFJRyZAP8G6yI5IeGuscA
 HvKMzeBuSlJ1igdoTENwunbL8+Z3hBcXiWSktpNe6S2gJjNgEqLYyAWuCTCHtG8u76y/
 W52e3AxAGagLwF25AwkxPhR4Cbr6ut53hpCSctkMDwnnJLGCsl6Z5db+BYBXWiP3qBkr
 KUJg==
X-Gm-Message-State: APjAAAXEEP7cBsnFCHlJ7/0BwUoJm+bBwadiTSyPk2Bh/gg+TjJI+USN
 KoDqa+y9xzhnmziLQgYGH2bDKioqdA==
X-Google-Smtp-Source: APXvYqxyIVVXcuN5TLs0dRB0WP2tIuaq4qbD4o0PU2O6h+sJ5p5TyK/Dqle5zHoPbA5V0Vc3+/trxg==
X-Received: by 2002:aca:b482:: with SMTP id d124mr714809oif.14.1566944635694; 
 Tue, 27 Aug 2019 15:23:55 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a4sm245454otp.72.2019.08.27.15.23.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 15:23:55 -0700 (PDT)
Date: Tue, 27 Aug 2019 17:23:54 -0500
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 04/20] dt-bindings: mrvl,intc: Add a MMP3 interrupt
 controller
Message-ID: <20190827222354.GA15294@bogus>
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <20190822092643.593488-5-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822092643.593488-5-lkundrak@v3.sk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152357_205161_0E9F48C7 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Olof Johansson <olof@lixom.net>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 11:26:27 +0200, Lubomir Rintel wrote:
> Similar to MMP2 one, but has an extra range for the other core. The
> muxes stay the same.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> 
> ---
> Changes since v1:
> - Reformat the compatible property documentation to higlight the valid
>   combinations
> - Drop an unneeded mmp3-intc example
> 
>  .../bindings/interrupt-controller/mrvl,intc.txt    | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
