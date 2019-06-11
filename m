Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166BB3C14A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 04:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1WiR2Z2YODitC9rkY41sDVKPfw/HawvWf4z3+Jip40=; b=DOFRjvjjt4e0eS
	m/yGMxnE0ceuOE3kFrvDtIFd2onfzbNHVolPj7vvw/aYxy5eQVLoxLlUBk3XUgN5t7GQOmZ+rUxvT
	/TiY2yQgjfN4MtHDPIqZr10prNnZ5qemA7TyQ2qmNuOXXGYSD0iqFnuOSi5SlSZaRnXo+zJ1OCDZM
	e/Tc33ufrFyCUydM78rmaAspdowBNu9VZZub4fDyN5Czb8a51pVlvMMIZsyqVreNTlWoNV1GNwmRU
	4jN9wqkf9+HPa472MCHYUvW5CNqKsaeImx+AI95hncpyA69IA2N1r2rrYrQrObjc2RyWOhQNl3oZJ
	UjkQBE+ODRpERsdKylIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haWg5-0001Jc-QG; Tue, 11 Jun 2019 02:38:25 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haWfu-0001JG-T7
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 02:38:16 +0000
Received: by mail-pg1-x531.google.com with SMTP id l19so3447446pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 19:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VzbaCUeairlB7SV9tBrRxtSBGLQPN2IpzYdKT1AqRHM=;
 b=Q+zRpjrbyJm8yQeUStTnWUtyUIayjzHZDfZDp+elDSTN3E4gjC4q2wmSZ1WkjIld4W
 xK+PBrb/7FWR332jiYaXMpvb5Gz2hpv5ughyBnNjyfGdv5bS83rgfcT6IfO637qUErGS
 650EKYXNwyXkKY7P1eT2uzDzuJ+gs/LHXO5d9DCh8XwuERiN+U5LqzhMsanfWppKdBZV
 zADZo025r3gIfNQ3xwKImvE3IlwyJPcLdkaeZ18BfQo1+pARbRdP+SzZTSD0jdtjPfOe
 Ia5WPOB+qHZj00b2BhQL71ybq0qVudOa+/NpKD3iLR2wzlrUaDGu11YybnLwj4ZuIi8h
 8npQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VzbaCUeairlB7SV9tBrRxtSBGLQPN2IpzYdKT1AqRHM=;
 b=DA19yeJNnnUN1di/RNS+jWEU2r78KVNEkHdZaNpcRcTS0xyhUQX8ormgLJcXaPZGK9
 sbw1pGmbNmfww9m45RBLcTOUe6nlXDWnBXqZDI8heEHM+nnAgG2x/9LQtJ4olgrtPTOA
 OihCZW1x95DGG6+geDbTXU5ZBBy8i7QsmPcJ1tRydwXTE3SkdkK19OC2hzp4uV8YZuDT
 Hv9+G4tgQ1xprR8nA7tshbRosFCxCdjTTwTtmZvhfBlfJhIsX3bieLk4cutLaOi/msxv
 Q95O1GkO5SGFuon6iNO5hEYKiOM/SS6QQCerSPLg4gJjfIyjdRdTzpYv9ju5PgiHzd1E
 sPug==
X-Gm-Message-State: APjAAAXPDss7WRauAXsjEGgGzlFd8nqDzfZk+SnMPd4DgPv4UuSoKU3z
 EiKFIrZKKlvTWOrDA8O0aurEkQ==
X-Google-Smtp-Source: APXvYqy0mB8jLiynhhQ3AwP14lHYE4hjQyOQPc+u/uwTzhBrDCfJUKQTM0HOWMCjFEH3KqdJeyJMdQ==
X-Received: by 2002:a63:6841:: with SMTP id d62mr18009567pgc.17.1560220693808; 
 Mon, 10 Jun 2019 19:38:13 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id j13sm10899658pfh.13.2019.06.10.19.38.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 19:38:12 -0700 (PDT)
Date: Tue, 11 Jun 2019 08:08:10 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC] devfreq: Add generic devfreq-dt driver
Message-ID: <20190611023810.7lrgnyqqkuajlm6p@vireshk-i7>
References: <e48d7e3d71166cea20c3c200300e0ffa6d26d085.1559737589.git.leonard.crestez@nxp.com>
 <20190606031526.xknv5qdoqufim6tr@vireshk-i7>
 <VI1PR04MB50558EF0387824D6AAEEB18EEE130@VI1PR04MB5055.eurprd04.prod.outlook.com>
 <20190610234844.CC289206C3@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610234844.CC289206C3@mail.kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_193814_946993_BA7165FC 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10-06-19, 16:48, Stephen Boyd wrote:
> This still looks very much "virtual" because the NoC node doesn't have a
> 'reg' property. Is there anything the driver will do besides change the
> frequency of the clk based on the OPP table? If not, then it still looks
> like this is a node for the sake of making devfreq happy to probe via
> DT.

Exactly.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
