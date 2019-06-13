Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C4C44F78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjPL3nRkDZd4MKtyROFcsQ9M6wUhJslcYYyujyf/uyY=; b=eJ0a6rOi3jB8j9
	+kEpj9Zi251GkGWtAaqFNb9Igtea5i3UpM90oMyCsz7P2cWVeT3UgpQ6Nc6NNKn4XMLkyJpyN/g9G
	BopznlPHYFudASks87oqpMyeFw3ZOqJfaOFk2bHoAKoOGOaAP1kR6vfrifOURnSaJ670OVm2d3XUl
	Vy+hFz4a8t6qRzcedrvuW4vynQc/VMXpewTOoxXSl6h8qtP3jqrdXqQhmZ22Ws+MkVCMMJjwEZwys
	cnhqE1lZYBW93JKIgzaa0KXFesqflUfoIcUz/zY6NaJpsatQOesw/o/OmoHJPCKrhaheNikRDthpL
	CSVWkB2wlvEHlqs7WB4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYSd-0006AS-Cj; Thu, 13 Jun 2019 22:44:47 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYSV-0006A0-GC
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:44:40 +0000
Received: by mail-qt1-f196.google.com with SMTP id x2so377161qtr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 15:44:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=cNyL6kBlOrargUB7RJW820//UPa0FDwEQWXIUTmj0gg=;
 b=hatYxY4BX7Dq1m/ZhVrjyhdC5+bbMSUrokMfVBDl5RdKFcp42wvJ9i9rYVz4j6fpin
 b90If/ykyNkkgez09XUkJ9+8KLTf4jsz70i1He88bbRR0U1ioIRJmEh0CNez+s4Oyjy7
 kYk5DgxObaTvoHrYsXrntbZKv1UHq8XJxrPzZ8KDbKsUQb4w5Up64I7vi1k99ZnG9gEZ
 ikwMuZsgy9vHimzphuzU+bdw6j0Nq0RAoTOjyWSDPey2qNtX9BYCYQsXt9mh0dYguekn
 Uh3mK31HIVE7Odjp5yBCVMYZ9TIc8TEW1mR9UnrI1dfjytU38BC2vlvDAX75gI5WJVe9
 7/JA==
X-Gm-Message-State: APjAAAXHLe2oaR+EYwLM1mFV72gJMQVfTvkPX29/BXf8/HMHFD3cqn9y
 BzGuH6o2AtR8XVWBxMnsmw==
X-Google-Smtp-Source: APXvYqzm9Y5ukOTyUC+FuNToA0iK6zRVGXEIz84ypEr3asNTJysYmiitgyCQBr+KJjeR54UVH9zG8A==
X-Received: by 2002:a0c:942c:: with SMTP id h41mr5580336qvh.146.1560465878329; 
 Thu, 13 Jun 2019 15:44:38 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id q3sm652003qta.74.2019.06.13.15.44.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:44:37 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:44:35 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3] dt-bindings: arm: Convert Actions Semi bindings to
 jsonschema
Message-ID: <20190613224435.GA32572@bogus>
References: <20190517153223.7650-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517153223.7650-1-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_154439_541762_64E42E94 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 10:32:23AM -0500, Rob Herring wrote:
> Convert Actions Semi SoC bindings to DT schema format using json-schema.
> =

> Cc: "Andreas F=E4rber" <afaerber@suse.de>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v3:
> - update MAINTAINERS
> =

>  .../devicetree/bindings/arm/actions.txt       | 56 -------------------
>  .../devicetree/bindings/arm/actions.yaml      | 38 +++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 39 insertions(+), 57 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/actions.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/actions.yaml

Ping. Please apply or modify this how you'd prefer. I'm not going to =

keep respinning this.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
