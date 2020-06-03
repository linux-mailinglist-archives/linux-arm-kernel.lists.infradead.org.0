Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDFC1ED518
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 19:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4FZUEjApwSZ7oQeDQp5RThc9enucBGOFqfjCx0NHE1w=; b=tIH+bOYcaaHwKu3rRSz037Mqf
	DfIVzkNLKE7unlUk5o0qkeRGhp4h9eUjzIUXhGD4b5162so+rxjWNKWwph+0oZDf5iOParnu3/49r
	r71ZezAiOchTHkZPr6vHdoRpnmtKPYDo1p/kQd6xBY9WMrnX/xhJ6UzFXj6mCKiCcVKaMHJxKZn2G
	/Ae3x77s8qn24f/Do046NdF7z/FZru01sgDeA1mnqa8X8a7N3fbRvXTWe6pfVe+uf0Cdu/17o8Gbp
	bq4GlqWZGbxv+ZY4M1t+piyOQwWLYz4pfFNcmAFoR8j6KJtqhg+2TySnRafOFKp6FDghxGbKpP+m2
	wnobTEC/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXLE-0000CR-Vu; Wed, 03 Jun 2020 17:38:16 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXL8-0000C1-85
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 17:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591205888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g4JdSAXlLTFOykR3a704n7KRgSRjVj4aOucsElPOq3c=;
 b=F9UhnPI9GQH0SQx47IIc5LTN28jE7cM9wph1+9htNvdVAoZmlU2XYbErwpmYJehlDWAx9y
 96fAxTn75Y/M6fA+7fhDgessAkf4k7iIpgsmn4Q1clizOBqQOr0VmPTVSfbetJJyZjBMKq
 u1DGNDTCwxZSZZBKJdnpCKhle2GdnoU=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-285-hFh_asBiOi6fhp1uRn_pgA-1; Wed, 03 Jun 2020 13:38:06 -0400
X-MC-Unique: hFh_asBiOi6fhp1uRn_pgA-1
Received: by mail-wr1-f70.google.com with SMTP id n6so1359907wrv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 10:38:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g4JdSAXlLTFOykR3a704n7KRgSRjVj4aOucsElPOq3c=;
 b=GihWRbtY+VlvV1dc7j3uNeHhc8zq+TsE/WP4SZT7xBV7kn2auLsb8i25iPblD2LQh8
 ekmSQ0fK9vfYNl3CXlkHVtZUYNNGnQMGMQSDP/sC+/83wy+v67wnaCgGl+hoYDGEg5Zf
 x5afEPcWi18Uaq0O49D5/g+emG1jPI5ymZZuB0TDiW4w8lT1qVoaTwEhjxSRND7DKkg7
 gdA2w/XA2Njk4gk6lj40s+QwdJeRcHpIj/hONm7rUY2A13ssdpTFGUdsGItyUfDAelmP
 WZkPwBGzeGxXk5PvNxX6WPBoaFfCjEFeOYBUBh5TTI+d/x0Jk3KOR+1tHYTOJIdx2E7n
 zQww==
X-Gm-Message-State: AOAM531oINZjK3prmF2BgIXaHoCstffxRPEi/ln/7dxfDBCOljMotDzM
 aURE5X0FE+aKZeOcvp/4KNrTU1X/Q6SRk8BbJtV9S3XaEZM0OSHjn18O0HLthWDseXg3LvpKE1g
 dwUzvu+mxbFem7g/VEFa82Wu+dSJ+XoCHaGQ=
X-Received: by 2002:a7b:c385:: with SMTP id s5mr261288wmj.121.1591205885373;
 Wed, 03 Jun 2020 10:38:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLjq4IDRdqkukHBckHKOOOLiGmG+r2akHBeeZCOhLw2fV6SQWj3VXyhtQLJX0YNKizL01l8A==
X-Received: by 2002:a7b:c385:: with SMTP id s5mr261254wmj.121.1591205885130;
 Wed, 03 Jun 2020 10:38:05 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id f11sm4390115wrj.2.2020.06.03.10.38.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 10:38:04 -0700 (PDT)
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
 <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
 <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
 <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
 <20200527063430.GJ89269@dtor-ws>
 <88f939cd-1518-d516-59f2-8f627a6a70d2@collabora.com>
 <20200602175241.GO89269@dtor-ws>
 <82e9f2ab-a16e-51ee-1413-bedf0122026a@collabora.com>
 <8f97d2e1-497a-495d-bc82-f46dbeba440c@redhat.com>
 <fb5bee72-6a75-88aa-8157-75f07c491eeb@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <681abc14-ef0f-ff15-68ed-944b2f96bdaf@redhat.com>
Date: Wed, 3 Jun 2020 19:38:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <fb5bee72-6a75-88aa-8157-75f07c491eeb@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_103810_363475_44F2F768 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nick Dyer <nick@shmanahar.org>, linux-iio@vger.kernel.org,
 Benjamin Tissoires <btissoir@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 6/3/20 3:07 PM, Andrzej Pietrasiewicz wrote:
> Hi Hans, hi Dmitry,

<snip>

> I'm taking one step back and looking at the ->open() and ->close()
> driver callbacks. They are called from input_open_device() and
> input_close_device(), respectively:
> 
> input_open_device():
> "This function should be called by input handlers when they
> want to start receive events from given input device."
> 
> ->open() callback:
> "this method is called when the very first user calls
> input_open_device(). The driver must prepare the device to start
> generating events (start polling thread, request an IRQ, submit
> URB, etc.)"
> 
> input_close_device():
> "This function should be called by input handlers when they
> want to stop receive events from given input device."
> 
> ->close() callback:
> "this method is called when the very last user calls
> input_close_device()"
> 
> It seems to me that the callback names do not reflect their
> purpose: their meaning is not to "open" or to "close" but to
> give drivers a chance to control when they start or stop
> providing events to the input core.
> 
> What would you say about changing the callbacks' names?
> I'd envsion: ->provide_events() instead of ->open() and
> ->stop_events() instead of ->close(). Of course drivers can
> exploit the fact of knowing that nobody wants any events
> from them and do whatever they consider appropriate, for
> example go into a low power mode - but the latter is beyond
> the scope of the input subsystem and is driver-specific.

I don't have much of an opinion on changing the names,
to me open/close have always means start/stop receiving
events. This follows the everything is a file philosophy,
e.g. you can also not really "open" a serial port,
yet opening /dev/ttyS0 will activate the receive IRQ
of the UART, etc. So maybe we just need to make the
docs clearer rather then do the rename?  Doing the
rename is certainly going to cause a lot of churn.

Anyways as said, I don't have much of an opinion,
so I'll leave commenting (more) on this to Dmitry.

> With such a naming change in mind let's consider inhibiting.
> We want to be able to control when to disregard events from
> a given device. It makes sense to do it at device level, otherwise
> such an operation would have to be invoked in all associated
> handlers (those that have an open handle associating them with
> the device in question). But of course we can do better than
> merely ignoring the events received: we can tell the drivers
> that we don't want any events from them, and later, at uninhibit
> time, tell them to start providing the events again. Conceptually,
> the two operations (provide or don't provide envents) are exactly
> the same thing we want to be happening at input_open_device() and
> input_close_device() time. To me, changing the names of
> ->open() and ->close() exposes this fact very well.
> 
> Consequently, ->inhibit() and ->uninhibit() won't be needed,
> and drivers which already implement ->provide_events() (formerly
> ->open()) and ->stop_events() (formerly ->close()) will receive
> full inhibit/uninhibit support for free (subject to how well they
> implement ->provide_events()/->stop_events()). Unless we can come
> up with what the drivers might be doing on top of ->stop_events()
> and ->provide_events() when inhibiting/uninhibiting, but it seems
> to me we can't. Can we?

Right. I'm happy that you've come to see that both on open/close
and on inhibit/uninhibit we want to "start receiving events" and
"stop receiving events", so that we only need one set of callbacks.

> Optionally ->close() (only the callback, not input_close_device())
> can be made return a value, just as Hans suggests. The value
> can be ignored in input_close_device() but used in input_inhibit().
> No strong opinion here, though. (btw it seems to me that
> input_inhibit() should be renamed to input_inhibit_device()).

Ack.

Regards,

Hans


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
