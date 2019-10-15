Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED62D7D17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ciBtBNRzSvmGozPu7vF0EgInYpMmhtA/cXU9jihZDKo=; b=e71xKLazghoKui
	4R2OwjjwU8NXps5Omy1MOG1sfiYFare66fCLEqqRmSVvfAyC02LVSDV3Y340dEs/WvJn37rbEMAcU
	DWjS4W+HvXJ8kOv3IrD9ovRX/XEk1FH/fkO6igayJwgtGbT6xfnwHRPjqQEmyo58r9lnup/wkVkfV
	+UI8+7jKROTBbcyeFBac4Ah+Fd9xZrxMKB4UfyeCDycftkQVElbr1u4pRpiHbfICiQq7jdx+1NvC9
	B8i1dLCwRJfOns4l2bVhsduO6SvfiuiYeDnldXw54SjyPBC9rKEcGCE9+WQq9oLtXKmOOt8Py9/7T
	Z1Ap3sDAtORkNOQ9qDhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQM1-000282-Ta; Tue, 15 Oct 2019 17:11:25 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQLc-00021W-Hu
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:11:07 +0000
Received: by mail-oi1-f193.google.com with SMTP id w65so17477175oiw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:11:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sHvL2755l1wK28oCVPLb2FpzLhuPdUG7orNUoD4vL0s=;
 b=ZxKNLtp8aK63JPIw53r7lHczQLgmApRpZSV+2pCMs0Y3nK/f6yq+NMM2iAUFoWPnCq
 LFg6L0SvBoqox5Ds0K9iRV2TFkfi6cEqe+QwxtqJgmtyHPN08J5nz0hajkN6lSwmERJg
 /E2+6IJqqlwGvKJFDk3v9GZ9x1o+o4ZRkuFyyTeib3sVqXU/MZ8ZN+n6RtqDuZeFz84/
 9/ABwT+KcJSkhUPZZAMZisPKcipHcTCu4gUGH1hjU6hO87+i6oUKhbO/pTTqirDjYbGD
 Ri18DJ3Wr9X/PHRyvJdB+KyGYhGKbxNbYuysiyNh8qdTYim3k9XgFO4F/dyriCwdNJu6
 aD4g==
X-Gm-Message-State: APjAAAU9lOmca9ATKiCH2xS0iCusaMYj3rWndUj+AYotq1c7KR+f+8I1
 hVen3laYN5Kq+2YEXRqajA==
X-Google-Smtp-Source: APXvYqwAdhK4wmfBuECugKN7hmoEcKhxuh3sBgPmjAEK2iKSpPvHvbMjZohPd0JB3bp+PLEPFwCj8w==
X-Received: by 2002:a05:6808:114:: with SMTP id
 b20mr30366866oie.114.1571159459445; 
 Tue, 15 Oct 2019 10:10:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t18sm6857275otd.60.2019.10.15.10.10.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:10:58 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:10:57 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: rtc: s3c: Use defines instead of clock
 numbers
Message-ID: <20191015171057.GA11141@bogus>
References: <20191002160744.11307-1-krzk@kernel.org>
 <20191002160744.11307-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002160744.11307-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101101_469332_7AB12FE5 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 18:07:42 +0200, Krzysztof Kozlowski wrote:
> Make the examples in S3C RTC bindings more readable and bring them
> closer to real DTS by using defines for clocks.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  Documentation/devicetree/bindings/rtc/s3c-rtc.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
