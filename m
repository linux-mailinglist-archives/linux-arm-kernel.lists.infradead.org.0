Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C3073E37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAdM5Serbm4907nIZct7XTPKvVkhpzs9xylw9LanAxc=; b=cwMIJAkwyc4af4
	RJ2S+XETajcSNEBZMrAjy1Uscz6tAeI1yUKP7OQN0hMpcD+ONDTxYBZuIdlkO2e2O+Oa6+igO9EBJ
	m5K3P5OD8E50TEcI/nHJfeQgmFK26hYyW2o1R3iAAtu2Zhsw7ziWXoXq1Fiw6gXo/ZKo7XzuW50+k
	bwAANnvXGITnZeKarEBG4AtvojLbI/m53pZb16mdIRMxGtRF9MdoRj3Glnil2Ronnwgym/Qheguy7
	1GpVZ7rp7T0p96h3SIZSjodKr9/Sdu0t0aeV0TJC6L9veWm16toQ8/Ahj/7rYlU3jGy0HILPAQNHj
	UxWyESUVBiRqDNsVdJ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNn7-0004cG-W6; Wed, 24 Jul 2019 20:23:13 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNmr-0004bv-Ki
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:22:58 +0000
Received: by mail-io1-f65.google.com with SMTP id j6so17212062ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:22:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uDWllbWAHHQJMizorbNWUIyq7E6utwVtniA+GguMM1I=;
 b=HZNiqn0hK7ZfYl60AEbq8Pa6T3dgIVUJ8m8vSsN3Q+FPta7dVIjsoJipM+8suv8neh
 fFTAOk7GT7CWBnoOqPjTWltNtmYxgxL5o9oTeatx0Kw1zUaHzL0SnEQ7PwvFHZl1nhFx
 NOJah+zcHq0PL4w4epqru5R8CXh1tpcRZhIP5l60KeoCBrvcfmIO3Z2Pxbe917zFM42x
 6EFIGD0s+WiAfmsAuXyDNa2GJDnit9VRHmSrkG/k9Bqernq6S7KHKzQyZi7VVyDBbg/I
 dNwZYcxaGqTnSFmJAps4jOInD0OPIs0eNju9p3BRYkUCldSaS3cDUwRmOOkDTmJRF00w
 S6Tw==
X-Gm-Message-State: APjAAAUTB0EPssigvaUM96e3BQWV//k11jpMUlbU1LfSNoQX1E/KZN+T
 qifql1M85oMoS/kktOfdug==
X-Google-Smtp-Source: APXvYqyQ9siwx0xN6aEL1lklrUj+Z5DeRx/7MB4ml1qvejrwmjU2V5SRYjuEr3YtGaU4tpxw1zPF8g==
X-Received: by 2002:a6b:c98c:: with SMTP id
 z134mr39825656iof.276.1563999776985; 
 Wed, 24 Jul 2019 13:22:56 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id l14sm42995882iob.1.2019.07.24.13.22.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:22:56 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:22:55 -0600
From: Rob Herring <robh@kernel.org>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Message-ID: <20190724202255.GA32633@bogus>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
 <1562678049-17581-3-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562678049-17581-3-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_132257_676672_429D9D13 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, Eugen.Hristev@microchip.com,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jul 2019 13:19:33 +0000, <Eugen.Hristev@microchip.com> wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Some i2c controllers have a built-in digital or analog filter.
> This is specifically required depending on the hardware PCB/board.
> Some controllers also allow specifying the maximum width of the
> spikes that can be filtered. The width length can be specified in nanoseconds.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c.txt | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
