Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC48F22AF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 06:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=da6bV/3awB0i7+D0f7KP8B9aaUDVOrlzFQ92B7ILkM8=; b=ZioIk67BsTOH5H
	hjyYFI8Gu7+x1x8pSDvQbWHT6iueDQ4eHe0uKFbVr8nb1vcLtn9MIl1qKIExWWPRx+2CZkZep6/P+
	ABzJTKyPJBH/3wes/LT57aldVDstzR1GI2sUwSha+WoSHiR9mEGmIuyDZMIKmOnbxQQDhDjlpLATh
	EvUXqAeEHfr9hvfdWDWvt0XjhSt58eEXqq4lGQtadyw/3+pMj2q60yLYGijGStFn6ECxj51945h9i
	LN9BK+Q+Eb/iLG9MeT0/xQBwkXMLKYeNCi6ih+AZRYI9R6Lbad17Nb5d2mpYp5WWwh/Kje/iEVUPz
	JizFzs1aZp/lOggQb7ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSa92-0005PP-0I; Mon, 20 May 2019 04:43:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSa8v-0005OK-1f
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 04:43:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id g69so6094310plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 May 2019 21:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+XiwKGCePMesqEFsZbk88+d/XnSzWj4VH7Ml5qL5pt0=;
 b=unoGz+98418sHeX4y3va9Fw7O/7rbEjL0hqVIq1my/Asr2dzM38M5H+2LqZvHB8AAU
 CqAQ6kJMNTvZsHuKd08/xPftA/HCBVOpd9T/IVsfET13Jf59zZ2lgw7rBogYKdMYL5HO
 D19WNFD3+CXw7ekYEu/sBvRFOLcPxesn9XRptLA4MN0cxd/h+H6ijVajWhreBcZlEb89
 1zto6lDvOL6iTVNTtZLtBD5/usk/MiY8ToYMfmuWPSFpLXmjSRm7UfgLrVM9IDZz023L
 +jA3+5k0WyY/BV+s9tNRRQvSDaqiY473/tMDg9LXbhdS9165ETFM0jaOZW2A2jQBuMSY
 XRug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+XiwKGCePMesqEFsZbk88+d/XnSzWj4VH7Ml5qL5pt0=;
 b=ZDqi1A6cFpi0ktjt8rKja4kXVfMQ6sjcHiGa/wqFw0vbE9YtjHri7cGFisB3gXCWOv
 iEx1YQi7Vm+5umCu4WNpmjW+32UukdeKPfIZNsDLuc4saGlgWZBD4qM5Jur66AAEAEIJ
 pR7mPvkyUKF6BCcp6VymnVEopcTQR2vsrCHHyqsXKwvZ2eOOZjiHtz2AJhcEEoWwo/G8
 xjMn47rfIazIU7+VzeJtRxUgvPtF1j4Xsy0AHdsMWUQGqYmTolBz/l5eH3jq9Ahu3Jyl
 uBLNZhEqA4PSIkCBH5BusfqBC85kO0hRMBtTiV5axaAWbfmei+KcC/df6+/39v+0fePI
 nDjg==
X-Gm-Message-State: APjAAAUZoFKB6zPC8kZzaLJhj7g+uQq6owz9lT0fDP1/urvPbDAW7Y1o
 E1qRP2G9nshtoAleo55IiPGSfA==
X-Google-Smtp-Source: APXvYqxKxyg7Aak1yT0b9mdNSLwjCHjek+L8V1ZtJqzVLOZXXZuDfEEcEGssLjb+LtYO06CzCKIoow==
X-Received: by 2002:a17:902:8e8a:: with SMTP id
 bg10mr19217573plb.247.1558327400037; 
 Sun, 19 May 2019 21:43:20 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id b16sm27365221pfd.12.2019.05.19.21.43.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 21:43:19 -0700 (PDT)
Date: Mon, 20 May 2019 10:13:17 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [PATCH 4/8] dt-bindings: devfreq: add compatible for mt8183 cci
 devfreq
Message-ID: <20190520044317.pwciu4bjuz5jh7f7@vireshk-i7>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1557997725-12178-5-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557997725-12178-5-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_214321_094603_F22EF47A 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-05-19, 17:08, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> This adds dt-binding documentation of cci devfreq
> for Mediatek MT8183 SoC platform.
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  .../bindings/devfreq/mt8183-cci-devfreq.txt          | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt b/Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
> new file mode 100644
> index 000000000000..3189902902e0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
> @@ -0,0 +1,20 @@
> +* Mediatek Cache Coherent Interconnect(CCI) frequency device
> +
> +Required properties:
> +- compatible: should contain "mediatek,mt8183-cci" for frequency scaling of CCI

Example doesn't have this compatible .

> +- clocks: for frequency scaling of CCI
> +- clock-names: for frequency scaling of CCI driver to reference
> +- regulator: for voltage scaling of CCI
> +- operating-points-v2: for frequency scaling of CCI opp table
> +
> +Example:
> +	cci: cci {
> +		compatible = "mediatek,cci";
> +		clocks = <&apmixedsys CLK_APMIXED_CCIPLL>;
> +		clock-names = "cci_clock";
> +		operating-points-v2 = <&cci_opp>;
> +	};
> +
> +	&cci {
> +		proc-supply = <&mt6358_vproc12_reg>;
> +	};
> \ No newline at end of file
> -- 
> 2.12.5

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
