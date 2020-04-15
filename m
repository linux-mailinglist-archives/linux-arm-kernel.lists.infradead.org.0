Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4876C1AAD47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdNvGAlI2KITrq47s/8bVzhvfhhjAB3who1H0yNp/HM=; b=n8UyuFA3J0EMfa
	pvaceNTpsBUTtJiq66Ntgy0kiADMVoJRRGzEijo3eT3lAvUc7ZcoOBob3ffsrZJrxI+1bR8HQ0/bj
	8thO4wkml601tiHWSZQ0R3TmOtoB8Y+PtLLp043uT5M8T6TQX9xeVhNJ7iAbmHhnO6vjAF5z5YDv2
	Y8JMndz9qoDK/22AU2UoPhJ1FcIeB5SqF7dyfRTzOa2fAALqV+F2ty9d9gqj67/blAjAwnC53QzRa
	lc5FJmaLFxEnRGdEMrOXCzwh5l8E838UHfAB8OIdzw8j4a0YjOe6vVm1PqSma+XyvPJ/vVNInVrqM
	8CamxYGD7+tcrrG4GMTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkpL-000112-Mg; Wed, 15 Apr 2020 16:23:51 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkp5-0000wg-2S
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:23:36 +0000
Received: by mail-ot1-f66.google.com with SMTP id i27so474231ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:23:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dqCaYkT8OVNprkSigyoCp2ZPVsKvgzd87cPbi/J2G4k=;
 b=R+oPEsAqEXDYdkngsD6XlvgFLdP0vorLG+/zbkDskj5Dhl3+31acToblZyCtJkKh3j
 wtLXvFUJ2qxKuc8J/8cGwMMiYd2bXAtxxvsgy84HdZTWEjplyxdguM7zc7lttLVhcRie
 W++z1lapwasHOjsy8q3/vflLD8iPuoRRHi7ueaIrxIqY1eay1wbP/HOKbK4z1W2Y89fy
 I85SY5nc7N2L/I5p2u3y0oj9kCgS8uvKunrGZ6WBK+QL8pYaAH8yMN81HvY9pZwpAmGQ
 Yy1Q/BLpbaOKHWVbDqyz6/nZZbO1TTsm+ho+EleAIFhMpUlwtoWU2ZIIr8oPzMB6enH5
 GekQ==
X-Gm-Message-State: AGi0PuZGzvc2eXsbAeILiPK2CqkZLgSaHV2l/my2poZuUKvw2yxeuAuX
 kJb/maJbs3C/GGK93eAbOA==
X-Google-Smtp-Source: APiQypKR1UuoH9e32fZQ9cndTzQaO9IUxQZvKDBEkzyNV7mi2Ii3pK0yWsxcv3mWaq3m8wipHNp1MQ==
X-Received: by 2002:a9d:1b4b:: with SMTP id l69mr13808068otl.179.1586967813963; 
 Wed, 15 Apr 2020 09:23:33 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 186sm6865669ooi.30.2020.04.15.09.23.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 09:23:33 -0700 (PDT)
Received: (nullmailer pid 32365 invoked by uid 1000);
 Wed, 15 Apr 2020 16:23:32 -0000
Date: Wed, 15 Apr 2020 11:23:32 -0500
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v6 01/14] dt-bindings: reserved-memory: Introduce
 memory-region-names
Message-ID: <20200415162332.GA32297@bogus>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-2-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409175238.3586487-2-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_092335_108086_15CAF6CA 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  9 Apr 2020 19:52:25 +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> In order to make the reserved-memory bindings more consistent with other
> existing bindings, add a memory-region-names property that contains an
> array of strings that name the entries of the memory-region property and
> allows these regions to be looked up by name.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v6:
> - drop addition of memory-regions alias
> 
>  .../devicetree/bindings/reserved-memory/reserved-memory.txt     | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
