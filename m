Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B5A8375A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hoF5fNUuyoRDbkHCOtfwZtIoKgrWaEoVZEOid0Toy7s=; b=lywtjUO1OMeRmclC3aZe09Yi7
	uSeymkPgqs8TbAEN4+sXvy8PB2HO8SAzvQjnWlaRT9KZbptyXdmXA33uuBeMeJ20m8NlFvTpR5DeJ
	ZYQnPneGpVh+mofGz54AVbe5YUSBKhm3/pMAw99p2extUFqeEQPry6/qKK84NkauNCK7cj4KXk+Vf
	bPfQgwzBuRMgUAYZtRu2M4RciExtwQSN3UT6KOrkqnj9csNHY8VJ1Y9NGXdOVHRIHCSEYPdaNNCj+
	J8W0r2jUo4LpxSYAKVwDXB1ju9FV9IvYbSm8UI+r0M6fOGvYiu3/CsH42EthgdhXvzp+kc1ZMSXMJ
	OeqZPaR8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2ik-00078l-IT; Tue, 06 Aug 2019 16:53:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2ic-00078P-UH
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:53:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id n1so2304838wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 09:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=gxNkkJD3b/WJ2BCN1yM/UBEgODs/xbGIxyPlrinnovU=;
 b=YDWulAFE5M1Cj2s64V8j8s4cLZ1QNjqZ5aD10HE/qncnQNsNiWNP1srKy9Z936zPzZ
 GfLtuLfTfrrKO3l7ixtUHK6aIHkRVgaik5+aOyFeBIxlxV7xPMyeKBLP45ubBVWxqsvG
 wv/eUSKpDGVhO/g1WIJNOS0+R9Wfm8cnW8QIO5tIdAWAE7WTYI7POS3z35s1jXLnCod4
 CWXJQqx3mhYa908hr5zPh9VqNo/osxl0WXgr26ayPgSZw6kCEbUbyRkHjfamOz2yZxLr
 yYLSsxfbZ8JDyt/lxippVAe3faaTsN4WpYs1vq6t0UsM2gnR9HGI8OGgrzC6l8M2QSke
 UBOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=gxNkkJD3b/WJ2BCN1yM/UBEgODs/xbGIxyPlrinnovU=;
 b=qKfiAcTx+1JL2US/4fH+UgEAVuRI77Q5oY+ADku1Xn4roy/n1G/SE7bVrUHlyxQbe+
 A3IyG1gsKXHLTYMlsM+CiGlojC37mj4Jku8xgcbuDX35u3qFUogIziSCbOoVnRitJymp
 /zdhmR8tzHwCFA+SvdBhpXmBEe05DFdcKJbH+/68ptnRP/YSoHQtOL6NrPgVGFaXtXdw
 3UGV3lrcz2v8AwA3HTyr6EAFqtLY3H7LzQPBFHunIf1iDGpzoPQcHjUM2DqzYb1xEYJi
 ROuVfk36AWh5xaw+jc1+PSXDYnyrYIBlFDxE4Xw8v2UtklWwise6+SbPDy8whoJrM+DH
 AMyg==
X-Gm-Message-State: APjAAAXfw88v+T8JykT64UbGdnTt7gQN1SMla+X9u2w/8cTum0sbic3f
 35BSMotyowJUPVa1VpDMKWA=
X-Google-Smtp-Source: APXvYqwkEM8/7FtU/qIz2EzqolfwDqNOFGtE+29zXZgsxLDAnchWnPtpfHMtQFGIzAti+86XMVHClQ==
X-Received: by 2002:adf:ec49:: with SMTP id w9mr5292515wrn.303.1565110429245; 
 Tue, 06 Aug 2019 09:53:49 -0700 (PDT)
Received: from [172.30.90.245] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id l15sm2581667wrq.64.2019.08.06.09.53.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 09:53:48 -0700 (PDT)
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
 <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
Date: Tue, 6 Aug 2019 09:53:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_095350_980239_4F7392F8 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Len Brown <lenb@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Enrico Weigelt <info@metux.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On 8/5/19 11:41 PM, Andy Shevchenko wrote:
> On Tue, Aug 6, 2019 at 2:37 AM Steve Longerbeam <slongerbeam@gmail.com> wrote:
>> There is nothing v4l2-specific about v4l2_fwnode_{parse|put}_link().
>> Make these functions more generally available by moving them to driver
>> base, with the appropriate name changes to the functions and struct.
>>
>> In the process embed a 'struct fwnode_endpoint' in 'struct fwnode_link'
>> for both sides of the link, and make use of fwnode_graph_parse_endpoint()
>> to fully parse both endpoints. Rename members local_node and
>> remote_node to more descriptive local_port_parent and
>> remote_port_parent.
>>
> May I ask if it's going to be used outside of v4l2?

It could be, I can see fwnode_graph_parse_link() being useful in DRM, 
for example. But at this, only media core and v4l2 are making use of it.

This patch was created so that fwnode links can be parsed in a new media 
core function that forms media links from fwnode links.

The full patchset doesn't seem to be up yet, but see [1] for the cover 
letter.

Steve

[1] https://www.mail-archive.com/linux-media@vger.kernel.org/msg148910.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
