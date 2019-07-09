Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B91263802
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47XaZA/HwSgR4CQmAXi9pRTjHWKYWdpVGR4kRk41rxQ=; b=WpRYs0cunV89YS
	+5aJecQMV56cw4GQwTakHvtTpIfhtem0qhynIIJBsiFtPnGKn55FGgQ40Brqjwvs47urE9qzNAtC7
	LIiidmyKT1EQghPQgmjOvPsetXBDyrcrDR/sJvPe2HCSEKa+5j6aRtf64MMPbClcg2Y0l3WtTf217
	/ogyopPbEevR7KNbaFrYKFOfuZsA21fsMSWRnujfaCUkRCh853IMspQEl+XV+h8ZZrEJZrgRyPyEP
	nf2zX6keAtnNkZ/EbIGxBubMzXlzHNmT101qPUbHUjBgRxLcnjb8nvwUeZaFoHHDPt8dIchPvp/nk
	2YvCccrTO8LtcmPnLxbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkrDY-0000it-Ty; Tue, 09 Jul 2019 14:35:40 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkrDO-0000iL-60
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 14:35:31 +0000
Received: by mail-io1-f67.google.com with SMTP id u19so43591330ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 07:35:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lwKfxQYrNRix0RZpaeVKxAuscBcsaH2KK8rGZ1jsPCc=;
 b=NfEqc0uOHkCbfS9+ABWxHrYBYo170HLAiNm/+yjzMEoNAypr3c7tTEuXtK9aWjYjLE
 T/GRoNsiSCESi2t5X4S9ucI/boP5bIqKM5JqWsjltIPHVtB6rDYrb04ZbAQ0Xi/bWCvL
 +1nTDimuAG3zPeMZY68zRF/9liotsbSPfzU80tEscL2fgYUB9/P7OQE6Vubb+lLxyeA/
 gAckOGMibIsfBgUdK4OGEVYs2hso5tteH2Kjo+KOknoIG1ybfiSL8kI9F5sgEjK1LMXw
 xKBDZqp55udCmvij6oA+ve4cRUrJsIpEillyWn5J/DwIlZIFHNiGoNdq+pbdduU6sVhJ
 npHg==
X-Gm-Message-State: APjAAAXcsI0DMHJMeRxlYhNboH4/YQ7Kjzld4iNG5EPAQKD/nMiC/zwd
 5qlx8EqASq3RaeY3xcBSfQ==
X-Google-Smtp-Source: APXvYqxycFxWOrP0VFA297PFQw08U0eQrnQU3S4DTJhbrCNZVKI7ILJJDrcU1R51khX7qQdXozwvCg==
X-Received: by 2002:a5e:8e4a:: with SMTP id r10mr6692177ioo.100.1562682929485; 
 Tue, 09 Jul 2019 07:35:29 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id n2sm14065735ioa.27.2019.07.09.07.35.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 07:35:28 -0700 (PDT)
Date: Tue, 9 Jul 2019 08:35:27 -0600
From: Rob Herring <robh@kernel.org>
To: Erwan Le Ray <erwan.leray@st.com>
Subject: Re: [PATCH v3 01/10] dt-bindings: serial: stm32: add wakeup option
Message-ID: <20190709143527.GA5489@bogus>
References: <1560433800-12255-1-git-send-email-erwan.leray@st.com>
 <1560433800-12255-2-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560433800-12255-2-git-send-email-erwan.leray@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_073530_229851_83F11315 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Erwan Le Ray <erwan.leray@st.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Bich Hemon <bich.hemon@st.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019 15:49:51 +0200, Erwan Le Ray wrote:
> Add a note for enabling wakeup capabilities of usart
> 
> Signed-off-by: Bich Hemon <bich.hemon@st.com>
> Signed-off-by: Erwan Le Ray <erwan.leray@st.com>
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
