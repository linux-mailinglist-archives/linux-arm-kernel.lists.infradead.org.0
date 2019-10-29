Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEFEE8C9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZiqi9FazJ/mXiQVqodL6TyYsBg3KP2U/5NlAZf+fN8=; b=ufc35lEQF97VmM
	z1mzumCjzUliwVBRaw4IkajQNc5wbXyVkOafA6SXWw1wgjH2clYcJTy9sjCisMdo4dBfuBF/nUfKN
	X+csaJ4n3XILJDGFVVi/KviAOGre3rQEc6TR9MjdeaNLI6Sd0NQ6Uuzrsu/Dpgxb61HECw/ZA2gpG
	VgAhCX33Au/gEwPo/Ze+KQhiHJOwjZCL5lxhhnDxBGnebqfBtZFFDtA/9LWkkGyrFr80nKj0TMY/+
	gJ3X866bMHpIW5EB08258imBkFstjMPLIsSfg0nVSFrZmhnbbU6l7XUqnPughm5ZdMCGnWJRithNF
	euZFXwTCVDFHR0jN15Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUKP-0004Pv-UB; Tue, 29 Oct 2019 16:26:41 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUKC-0004O2-Tc; Tue, 29 Oct 2019 16:26:30 +0000
Received: by mail-ot1-f66.google.com with SMTP id c7so10293273otm.3;
 Tue, 29 Oct 2019 09:26:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jrYKN+h6Z3GleTEUBK92hvb5i3b1naeQCWbIcyAY6B0=;
 b=G0hYFrWEVJoIiXLg1w4Gijb/mkPpHaGyn6yBO9FCoEMI5iiBQ/iZ0PwwzvbK5xkkkc
 5XBcQq0m0bKmWYd5ES7CnoNtTspDPcFgBuv+wVbHGQ49B0NaNzRQWyDSuJIC0TDN47kR
 HCv8zfJ01UKJVgAym49ZrSXx4L1nPFAo2cSZB09YIyzuEdfsTMIQQ4TiWrxL3lolkMew
 f8GJC7opoSV6ZFHtrnCKYF300gtWMLO1yNYEd43ohrjTqBbr4TQ11PosKZG902OC8C/M
 3Mk1qtH3Rr6gtmaZV7A6jw0Nh0U8B8cJdB9Br5+VBarfkeG3ilIeDMGWkPjlPh1iGy1Z
 G2mA==
X-Gm-Message-State: APjAAAVaVys+Ug5TJFA6/Bx+0kk3sfqSrfam4E46ALqv9sCT+sm7EwZy
 eq+PVhhYJ1oj6B319cRUh7tk8qA=
X-Google-Smtp-Source: APXvYqwQTFB5Bg3vscJfKb3aCnMfFE1g7KjqQZhR4gt+OVU1yKKpL1jg/S6GMNBR5n2q/cPa3xoaMw==
X-Received: by 2002:a9d:721c:: with SMTP id u28mr18904247otj.359.1572366387883; 
 Tue, 29 Oct 2019 09:26:27 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d27sm2347954ote.11.2019.10.29.09.26.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:26:25 -0700 (PDT)
Date: Tue, 29 Oct 2019 11:26:24 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] dt-bindings: i2c: meson: convert to yaml
Message-ID: <20191029162624.GA1057@bogus>
References: <20191021140053.9525-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021140053.9525-1-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_092628_954831_78C0169B 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, Beniamino Galvani <b.galvani@gmail.com>,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 16:00:53 +0200, Neil Armstrong wrote:
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic I2C Controller over to YAML schemas.
> 
> Cc: Beniamino Galvani <b.galvani@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../bindings/i2c/amlogic,meson6-i2c.yaml      | 53 +++++++++++++++++++
>  .../devicetree/bindings/i2c/i2c-meson.txt     | 30 -----------
>  2 files changed, 53 insertions(+), 30 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-meson.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
