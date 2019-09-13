Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96150B2217
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:In-Reply-To:References:
	Subject:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CB2OPZYPaE8SBQy+ULifKE6FAa9VVXqFvwz/dYXybTw=; b=VvYJLweBvb5+So
	TPrRqcegh6ZdSfeqTa3CW4vZ4fT+Hovwlx1elJthaD/6hdElULAVQL1nS+B2zFhktdu7OtGNrzFut
	c78zk5GEScTs9viyM5bVmlUNEVDiF/mJ4hyZLMwZiuS42lSCYy0zrm77yB2FvnS6+2sXStlfggJas
	UVoF7AQuLBpI4dCnzYf1kcSCtGckMYnNmfPW2QBhhenASS22h0XuKV0WT/duDcWW+jJhErUg7K23l
	1GcvfcSrvlfRx4mUiZnM5TTW1qvNBdjGjYFhos0j+8kYtS7OQezIW+l7WJUWI9dqQiFOASzvntGm9
	EJoAT8PE08gi7nLNrD9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8miQ-0003ka-U2; Fri, 13 Sep 2019 14:38:27 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgN-0002UD-KT
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:36:22 +0000
Received: by mail-ot1-f68.google.com with SMTP id 41so25882361oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:36:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:mime-version:content-transfer-encoding:cc:cc:to;
 bh=WQe3sxk7jEHoM6MhJMqflNra51yrlF9TrLwm+43/CtI=;
 b=rffNL78Z/5iEvYiMEOgdvYM5V34N+Fv38kL9o6lY+ZQ9CNox0pfJnOwtp1TQiEnL+I
 t2LbCR2t8n5J7xwfKpjkSCl/uMI8XbRjD2geni8clO8p8tzfoWr7xBxRSINCrbmdURnb
 7GsrVorA/wXObBx0T80GUdZBwxwZ86uvNamCkCOpnLf0AjaH3Yn5SWjxrou08gFPf6I9
 /VDjvAVEgyssAoCYAA1kXmLIDCiRwgJCqK8BHn7VlONsZoeIF+/YfSs/1wyzqQjnVjsP
 cXdnqf2p6BETn+QeAWw0q2jmH6R1DNnjqHpjkgB3jOudj7J5Q72RJSEiXVHUKJnS2ljd
 Yp3g==
X-Gm-Message-State: APjAAAVZDJC8m/7tqFVofGWczJ8wnHOJikWDFh8BOF/4ryoYnLRY0RdA
 2rTtlEk/gqGgzAknOWfcGg==
X-Google-Smtp-Source: APXvYqznYXhUuY9wMJA1kZwpAbctOEANyWf0evGLBf0houriOZBOxRh9w67VoSrSBWRo9z1lP7esoA==
X-Received: by 2002:a9d:62c3:: with SMTP id z3mr41959312otk.194.1568385378735; 
 Fri, 13 Sep 2019 07:36:18 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e3sm9962835otr.73.2019.09.13.07.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:18 -0700 (PDT)
Message-ID: <5d7ba962.1c69fb81.eabe3.44bf@mx.google.com>
Date: Fri, 13 Sep 2019 15:36:17 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 4/4] DTS: bindings: omap: update bindings documentation
References: <cover.1567878413.git.hns@goldelico.com>
 <35e4f219af5f8bff48e89ece7541f4e4ae6f27a0.1567878413.git.hns@goldelico.com>
In-Reply-To: <35e4f219af5f8bff48e89ece7541f4e4ae6f27a0.1567878413.git.hns@goldelico.com>
MIME-Version: 1.0
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073619_908643_96B29F61 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: , Mark Rutland <mark.rutland@arm.com>, letux-kernel@openphoenux.org,
 devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <eballetbo@gmail.com>, kernel@pyra-handheld.com,
 =?UTF-8?q?Andr=C3=A9=20Roth?= <neolynx@gmail.com>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  7 Sep 2019 19:46:53 +0200, "H. Nikolaus Schaller" wrote:
> * clarify that we now need either "ti,omap3430" or "ti,omap3630" or "ti,am3517" for omap3 chips
> * clarify that "ti,omap3" has no default
> * clarify that AM33x is not an "ti,omap3"
> * clarify that the list of boards is incomplete
> * remove some "ti,am33xx", "ti,omap3"
> * add some missing "ti,omap4"
> 
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> Acked-by: Tony Lindgren <tony@atomide.com>
> ---
>  .../devicetree/bindings/arm/omap/omap.txt     | 30 +++++++++++--------
>  1 file changed, 17 insertions(+), 13 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
