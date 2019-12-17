Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A99AE123B30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 00:57:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvAEV2nFd8sR81xsLRbDnqhG4/k6byZ1EoQOLWl8kKo=; b=pxD2twrLevNkfu
	p8WPozEt1xMI4/NB3zK0BeSvEGoNz0bzoA/Z4mzDqsQdgze0V7yjBn5zMDSBNSIr2KUrdJ2eLj6mV
	7uhChVn8xXbR29Ba5oJAsulY3xPy5t0jcij+OsTl2Svj2+4nfGHzUvFVZW8bNpDQO+H437FDUR8wg
	sW9JrCb6SW54npJahHZOoFjvamXc8IilWWGGRUkfBxBBpscb/0RTY/84yRwPJxoJBPhsOyEvf57HY
	xDyQ87Z+EBKcVYD+iN1emjYxfdFmr8IqqdsSsSuAfBgwcCbR932fpqJZFRkZvJbScHOlF5NzGOKRb
	K2/fIM5gvts0tyKutPWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMio-00073Q-QK; Tue, 17 Dec 2019 23:57:46 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMig-00072s-OH
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 23:57:40 +0000
Received: by mail-ot1-f66.google.com with SMTP id k14so96817otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 15:57:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E/Jh0gEjrB4l4YoPQEAqdMSsYPuhulVXEcBxp+hlji8=;
 b=I7MWsrfuS0r+lAPqU+UfnUtbDS+EjqnfbDRsX4qcKCCacG3zQJTwP/jOaxbDc5kVgP
 HMRetsnvE0iUQNO4IqMJ7t2hnk/772Fv6VYX2xFwM/yraDCCk+jwQfXgREQh58YXag2g
 glaA+nZWABDJ1Iu8NUqeaWD7vqW/ub1OsUYQSB3I/lG9v2oty9FGUhQfPhyAVQ+7f08k
 rPSPYZwtOljz1+7aABJq9xQfm7JL4IzFa4M32rKr8kH2KTHH7hTRx1vSrsxXYxUOagbu
 ridKcnuesf0lrOuOpH77z/C/Q4Opt8Geyobxa72vNb2wUmQadYN0aeblKpmufnC+0URh
 m1VQ==
X-Gm-Message-State: APjAAAUhWcDxSUhOk2imUTQ5TuLirQzMYF3fY94eoW+pd+staIziUAtB
 x8F1PVyobLmw/azqEzQ47yE0/aY=
X-Google-Smtp-Source: APXvYqzmn8JDS5mvDHSpuGCBOrZ4cPvFj6ziPOM02alJJJusCEI9xOeuXQl0jITxSGcWJaouCznyQA==
X-Received: by 2002:a05:6830:1bf2:: with SMTP id
 k18mr128163otb.36.1576627057677; 
 Tue, 17 Dec 2019 15:57:37 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e21sm169865oib.16.2019.12.17.15.57.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 15:57:37 -0800 (PST)
Date: Tue, 17 Dec 2019 17:57:36 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2] dt-bindings: spi: Convert stm32 spi bindings to
 json-schema
Message-ID: <20191217235736.GA17096@bogus>
References: <20191217090715.13334-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217090715.13334-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_155738_790161_A1B5E63A 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Amelie Delaunay <amelie.delaunay@st.com>, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 broonie@kernel.org, Erwan Leray <erwan.leray@st.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 10:07:15 +0100, Benjamin Gaignard wrote:
> Convert the STM32 spi binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> CC: Erwan Leray <erwan.leray@st.com>
> CC: Fabrice Gasnier <fabrice.gasnier@st.com>
> CC: Amelie Delaunay <amelie.delaunay@st.com>
> ---
> changes in version 2:
> - fix typo in if block (compatible + contains)
>   The boths typos weren't detected by checkpatch.
> - remove type for st,spi-midi-ns property but not add upper limit
>   because the driver compute a delay (expressed in SPI clock cycles periods)
>   from this value (expressed in nanoseconds) and all that depends of the SPI
>   bus clock.
>  .../devicetree/bindings/spi/spi-stm32.txt          |  62 ------------
>  .../devicetree/bindings/spi/st,stm32-spi.yaml      | 105 +++++++++++++++++++++
>  2 files changed, 105 insertions(+), 62 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-stm32.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
