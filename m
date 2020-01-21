Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BD814472D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BiIFDrmmMy5nG3RL9P5zQlGhwKAgrw4QAG6PND5Z7c=; b=pgjonud3FFVa8R
	ZiTtlSOSjEzndwDUUn1Krzyjloo8PnbaQNZKGLADRs5EvTp1g6uCLOZpXgMyEDsGl3mEcLM8dfAxU
	geg/Ex+k4J2Y8X1iEOsj5y6DPB3Uc8neH9xpo8RqNSHG6wLhZJ24Ek+VW0Uyke82661+pWf9fOdEU
	rmhTYCl8H++G8aYWQDD2BYL/nR06Fp8ngb6zep6k5+N5p0YP9kv1Vwd22jhJuK1xfa0rRiD+SC3If
	G45Hke97u2Xe0E087rYyRV2j12b7BN9IhFABOvyuC6Kkmb9Zn+EysfUOQ54nr6T/7WAMgll/gYYaN
	sv//ou/VXmJf+mqxdsxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1ur-0006XH-O3; Tue, 21 Jan 2020 22:22:33 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1ue-0006Ww-UW
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:22:22 +0000
Received: by mail-oi1-f195.google.com with SMTP id z64so4215140oia.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:22:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qQ3ESJiwe24A1xRRFdOQ68BgNu0jHa+2w0EJEUQi0CQ=;
 b=Ngrz83zWPPYdBfkaNTvNJgxsWOUCM+HJTkI5GN17v1t7xEiOBFKzhsZQ/hWQELO9a7
 xr/0MtwaIeW+APlx32MwjWRKOgyNhkxRWRebO+2AybGLsn72x/foHTaJAQ6gk65vmiFy
 qvn0u/NEO4LinMXaYbk2eP+V+f7WfQ7JAM084IcTallTM36NvTWbdYPcD85RyycCZdLN
 raya4LBLGxXpXlZu+Pd4vnqZDMIf17xFwhSdN3QUYciN/mky9HZsl9YuQxagFA7fK+Df
 NL3YlR1nUu7h8QrmjqO0tE+nFCYTSW+NbgqyYPa1L3G7lpz0rlDFUH/tzV7l/3A4No+I
 /Q8w==
X-Gm-Message-State: APjAAAXTToilJoqdCxwdxFYX4cA0f4f/1cjqy3/JMEnxxzIznQ5kk3kG
 6kafrf2ZJUSb4DQGWlJ8gQ==
X-Google-Smtp-Source: APXvYqxtTBp1m0NoVYXgYISnqaA0oCc25esO/7iHUU9wqcKpSAWyGjQXwz90q4B5a30iOmY5CpuOCw==
X-Received: by 2002:a05:6808:1c6:: with SMTP id
 x6mr4687242oic.49.1579645340281; 
 Tue, 21 Jan 2020 14:22:20 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m185sm12426354oia.26.2020.01.21.14.22.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 14:22:19 -0800 (PST)
Received: (nullmailer pid 11864 invoked by uid 1000);
 Tue, 21 Jan 2020 22:22:18 -0000
Date: Tue, 21 Jan 2020 16:22:18 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 2/2] dt-bindings: serial: Convert STM32 UART to json-schema
Message-ID: <20200121222218.GA9196@bogus>
References: <20200114123329.3792-1-benjamin.gaignard@st.com>
 <20200114123329.3792-3-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114123329.3792-3-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_142220_975933_45D73369 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, erwan.leray@st.com,
 mcoquelin.stm32@gmail.com, linux-serial@vger.kernel.org,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 01:33:29PM +0100, Benjamin Gaignard wrote:
> Convert STM32 UART bindings to json-schema.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/serial/st,stm32-uart.yaml  | 80 ++++++++++++++++++++++
>  .../devicetree/bindings/serial/st,stm32-usart.txt  | 57 ---------------
>  2 files changed, 80 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
>  delete mode 100644 Documentation/devicetree/bindings/serial/st,stm32-usart.txt

Looks fine. Will pick up when you respin patch 1.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
