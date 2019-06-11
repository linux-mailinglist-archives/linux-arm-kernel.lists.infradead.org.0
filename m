Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2157C41851
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 00:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yc0taYP1vVAv78UBkQ+sUvaYbQkg7k7VWllqrjk3Jo8=; b=qws9nzNSqkA0b1
	3ZQqf2CnKgLuOsXqCkdCZGo5YktNgR47jqY7IbtHnnFS+WzG/vuheK39GBu2F/lCVZZhEpDk/FZdq
	sQt66+H0I1mHq6fUNC8oDxR/CQyo87JuW5Tel0Jx5GnU2o4ZHA8GJqrRGKWiQSDg6G+wUKaF4Zmw+
	myeRNsUVkIwFDhjbILSL3YOROsvLPfxW5KoS9ALa2wbhL++5a8cU9n9HPg1LBjPeu7BP3ineG6Kcw
	RvJbu3IT7mGN9B2X29vcuLFx9hIHf8YUSMjPqm0+FpEXY1Ylu7D8eMIhwZhR1Y5Vrel0kIQW9einq
	nLmhjl1gee+v3wcA+AWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapS4-0005wr-MS; Tue, 11 Jun 2019 22:41:12 +0000
Received: from mail-it1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapRe-0005nM-Te; Tue, 11 Jun 2019 22:40:48 +0000
Received: by mail-it1-f193.google.com with SMTP id x22so7529667itl.2;
 Tue, 11 Jun 2019 15:40:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HI3rHUK26/S2B0LA3WlM09q3Q/jcQRPOrltE5Dys4vg=;
 b=SubqXtmy5xBdt95Eqnsu5NFkjrylz3sRlabPHuSnSnXpnMO/czwfAGPXhTyYI67dOf
 BpDswP+WUVPyQLbEcIEMaQhUnSNn3gqai52L8Sfj5Cr0sHomr1tUaAfvJnsFW/NoIlws
 pjawxanXcB8O0NNo1vJi36hRFyRMP7R1ZpE4e3FnPQJUmorcO3//SLlUzRmIPebqSw2Y
 OZLu59WQn1fxBSQO/aZgJ6TzRFX8oyd/AbbazgT+g5clubuGDMAmR4fXFRlnfgdTi4+R
 O+qLfZ1Bbu1YtEoU3i2RKmBUc8/HiHS+Wm55KMHzVR4FxmSMlb90w8PFZ8llrRUTLvpX
 2KdQ==
X-Gm-Message-State: APjAAAWTcXgDrFmYk96keHVP1eWO5DA7S2f36mpeH6z4sZ+zSh/SM0nL
 x6Bb0LXIxOUrNC6KPAw2Ow==
X-Google-Smtp-Source: APXvYqyYN7ZbEDoYi00MhHLqHL7FwPdCa2uF9Kv/WyYmja0MIBn3v9bIz1f2IeqAvvSfdbDWHNDRAg==
X-Received: by 2002:a24:b303:: with SMTP id e3mr18466988itf.170.1560292845706; 
 Tue, 11 Jun 2019 15:40:45 -0700 (PDT)
Received: from localhost (ip-174-149-252-64.englco.spcsdns.net.
 [174.149.252.64])
 by smtp.gmail.com with ESMTPSA id p10sm5553716iob.54.2019.06.11.15.40.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 15:40:45 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:40:41 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [1/2] dt-bindngs: display: panel: Add BOE tv101wum-nl6 panel
 bindings
Message-ID: <20190611224041.GA407@bogus>
References: <20190608070230.55381-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608070230.55381-1-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_154047_024691_B95CD850 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 yingjoe.chen@mediatek.com, Thierry Reding <treding@nvidia.com>,
 Sean Paul <seanpaul@chromium.org>, linux-pwm@vger.kernel.org,
 Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>,
 linux-mediatek@lists.infradead.org, Russell King <rmk+kernel@arm.linux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 03:02:29PM +0800, Jitao Shi wrote:
> Add documentation for boe tv101wum-n16 panel.

Typo in the subject and checkpatch complains about trailing whitespace.

> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../display/panel/boe,tv101wum-nl6.txt        | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt
> new file mode 100644
> index 000000000000..2a84735d742d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt
> @@ -0,0 +1,34 @@
> +Boe Corporation 10.1" WUXGA TFT LCD panel
> +
> +Required properties:
> +- compatible: should be "boe,tv101wum"
> +- reg: the virtual channel number of a DSI peripheral
> +- enable-gpios: a GPIO spec for the enable pin
> +- pp1800-supply: core voltage supply
> +- avdd-supply: 
> +- avee-supply: 
> +- backlight: phandle of the backlight device attached to the panel
> +
> +The device node can contain one 'port' child node with one child
> +'endpoint' node, according to the bindings defined in
> +media/video-interfaces.txt. This node should describe panel's video bus.
> +
> +Example:
> +&dsi {
> +	...
> +	panel@0 {
> +		compatible = "boe,tv101wum-nl6";
> +		reg = <0>;
> +		enable-gpios = <&pio 45 0>;
> +		avdd-supply = <&ppvarn_lcd>;
> +		avee-supply = <&ppvarp_lcd>;
> +		pp1800-supply = <&pp1800_lcd>;
> +		backlight = <&backlight_lcd0>;
> +		status = "okay";
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&dsi_out>;
> +			};
> +		};
> +	};
> +};
> \ No newline at end of file

Fix this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
