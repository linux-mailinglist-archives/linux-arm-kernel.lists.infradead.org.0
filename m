Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86471652F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 00:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9i1bVFs7pIMs1V+edOP8C5/1oBZa+reVAMfxZw7YurM=; b=TKLcrBxzMgnqiX
	phnXziZN8/znshr1XRkM81mRLBhDcbCOrwo27/R+Q5j7deWDdQZWnKUgNC17Q0yaCscXXhTDH6Ux7
	DM8LSaBOSZaTdIvOnBb5yhO10350GYETOoqCUOHpiearDu5fgoaW5pw6LGSEzZUyJT+90nugGa/f2
	8qwnudT6kqImyLsBITOKwX0Pfjl+Q89cD5nzrS3CATzaoSIQ96fcg6pAF1kOYt8V0Irjn6mRFEoiF
	1fF3CAlCUPPKZiIX6kTvWWigL82A7LGHPP4xEUuq2t6SMSzW67+KhiOdYCRkfrLel42LUNAB56S/7
	dbNzQyFhPfGsq7z42U/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4YW6-0006D4-B4; Wed, 19 Feb 2020 23:12:30 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4YVx-0006Cb-1W
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 23:12:22 +0000
Received: by mail-oi1-f195.google.com with SMTP id z2so25612313oih.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 15:12:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CLPRmzON2R02+/ZY31sqBcy//1vfhbocYVY0OJmPA7Q=;
 b=TpaLOdLPyvIy1NjyS0BHuflAw7kgijUqy51GRMBniaAHyYQD1djFnZLEZOyuGxbFFP
 mknQu9bpua3jOCzTkNde6L7CvQTUj01oi/jKcgD6B/9kLnYudZludajSE/nkpJJAUH8P
 qsYYnLHDltM9D6di5ZdSdrLb7fSIjIDMHuL+Ov+gWxa26PN3EYadd/pq13poqVoZRceJ
 5Y98vrjFiHVP9krHM48aQSrsNwcmA9h9jsd/7hAmKOR7Iw4yb4CeI65ceGM+wYKDKpbg
 Lb/v58UwEYBOLfLLp2DkXvLDOyG+kN6yTnERdye7ZKxLPv5XIzAB99BMnPUo+PiQ8qT4
 y11Q==
X-Gm-Message-State: APjAAAXhNEQTlsLWTmUlZWadouwhzcfY45t9GFb/K2lROkO80x1X0tjX
 Z2rijEvAA0Wz9QprDmpayQ==
X-Google-Smtp-Source: APXvYqyH6dHK8cr/NZ+DC/49bIcKPOlYG+691fjOnLj0uJTTKRot/Tcf71eVud11ZtmHjyKBDuPNUA==
X-Received: by 2002:a54:4418:: with SMTP id k24mr77122oiw.46.1582153940062;
 Wed, 19 Feb 2020 15:12:20 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h15sm420269otq.67.2020.02.19.15.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 15:12:19 -0800 (PST)
Received: (nullmailer pid 17648 invoked by uid 1000);
 Wed, 19 Feb 2020 23:12:18 -0000
Date: Wed, 19 Feb 2020 17:12:18 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 2/4] dt-bindings: panel: lvds: Add properties for clock
 and data polarities
Message-ID: <20200219231218.GA24409@bogus>
References: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
 <620a740cec4186177ce346b092d4ba451e1420dc.1581682983.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <620a740cec4186177ce346b092d4ba451e1420dc.1581682983.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_151221_083811_EAA6D486 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 01:24:39PM +0100, Maxime Ripard wrote:
> Some LVDS encoders can support multiple polarities on the data and
> clock lanes, and similarly some panels require a given polarity on
> their inputs. Add a property on the panel to configure the encoder
> properly.

If the panel requires a specific setting, then that can be implied by 
the panel's compatible. Does Boris' format constraint solving series 
help here?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
