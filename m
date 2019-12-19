Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB80A126621
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1/iodlNcCEmjE/L8yl53SOXnOYgI66V+UlZf4/EvrM=; b=rJ+Km71UWfl/nP
	1pK2aMMOjrQp6ihF22Wm3+5nNlWhVhvCTq+xeSIntyuLbTZBiWBYch4WNTr7K04wiFCOOLG44cIKP
	i+wy/Swaxcf5dGFpavjMLXGIVPdpVG1gQVlv2CjWh9PUQzC+LwayrJ9opv8C3zzxuT2PTMr1wmE6a
	cR6zowDIyAdhp7FBGVMjAKlRjZ7Y3YSh1jLcDVm64V3mJT8VjNHkigq19kF66rPaeRJgoZ6V7NB7s
	z3bbFRKlLI3fDh39wdI2txiqsfdH7Ji8rKi0a2tWHriDbFAoeTtgps28LZQksMdVuXoNfnhiPK0AA
	g+TXpxGAqeoqeaorSdeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihy56-0002UQ-MS; Thu, 19 Dec 2019 15:51:16 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihy4v-0002Tu-AC
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:51:07 +0000
Received: by mail-ot1-f67.google.com with SMTP id b18so7760166otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:51:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ci18yO6S0a6TgITq8YqQaAsiIr5weNY4GfvU653cx3c=;
 b=FbGPa4yU/TsU5B+RaLEmIhgoD9Fe56dYHOJFZLdkINcNxsmAZBtysyJkKIWCJycOoa
 broTCkza87Cgh51RBsusNjbC5kLEPmXbS7MhMxH73s05IBNT7gb2v07Ruo91PAflJLps
 gwJrXCoPWr64eTt9+D0egDJfeqggNYN+5pRdKbt66hB4Jt9nQpqxPLi3DcJhgeXLqosP
 FdbLOT4aajr0UOfC4FW5o3gc1WwbJmPXjuysLd8vZ19t8ZdSf32Nb9iu1I/xKVWJ+kty
 9fWiUmF7dFyws7uqp1X6fVvUBxW2RtgAuNR5ZgsSjmP0TaHFx9JeuQ+ATcoKIei+Vbh/
 BjJg==
X-Gm-Message-State: APjAAAWLiK2TcEaAaSPu1KG/XeCzgBdO9DQZO+4s7GV4NvQXgv88dtUh
 nqk6MA9u+i+yd0xNkunyaw==
X-Google-Smtp-Source: APXvYqxBitxJErG8fqxh+172fCWcJiax2apTWgRol/iP7/vlCUvpXo+dEXMMyBU3q5UoTCa+0/Od8A==
X-Received: by 2002:a9d:7a8f:: with SMTP id l15mr9106619otn.109.1576770664003; 
 Thu, 19 Dec 2019 07:51:04 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l1sm2092339oic.22.2019.12.19.07.51.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 07:51:03 -0800 (PST)
Date: Thu, 19 Dec 2019 09:51:02 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2] dt-bindings: watchdog: Convert stm32 watchdog
 bindings to json-schema
Message-ID: <20191219155102.GA26498@bogus>
References: <20191121084316.13839-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121084316.13839-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_075105_460358_5EB0B7D9 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wim@linux-watchdog.org,
 linux-stm32@st-md-mailman.stormreply.com, linux@roeck-us.net,
 linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 09:43:16AM +0100, Benjamin Gaignard wrote:
> Convert the STM32 watchdog binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in version 2:
> - remove trailer space
> - add Christophe in the maintainers list
>   
>  .../devicetree/bindings/watchdog/st,stm32-iwdg.txt | 26 ----------
>  .../bindings/watchdog/st,stm32-iwdg.yaml           | 55 ++++++++++++++++++++++
>  2 files changed, 55 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.yaml

Fixed up a typo with 'enums' and applied.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
