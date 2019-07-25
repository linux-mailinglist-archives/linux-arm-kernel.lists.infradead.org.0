Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E01B74346
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 04:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PF6jWNxwACmIqsEwreQq3Eak7a/MsvijKZBXPWwREo=; b=nWoBUpYjT2qFYV
	CG2ubAYA1r/EPAgpx3YROj6z/Rm3SMxuxoZEYuie7vGEPEFRwCC0PavOte3aZ//0foj23jb5MnyeQ
	jFZUBNqK1vFQDaMTaNkDzcFRuqeI6J9gU2djJhMiwYGNc5AfAEws8VgGQmb3xaGGH0bEa+FKUAmd5
	oXy+YA++bUkkZxyCZvEGwv8Fi34lfqrS5IQlOl8EzUiSG+fIcOizateQS6iLM5TWXrUiD7Ioo5ovG
	pfGy7V5K6NEc7tYErDSkgkNGJySmfP2qGtyJgOOpsYAKUlC3NoSh8yC9kjYR9ubu8rWHy8srJVRTO
	vnB32tlTq1vkwn7tjRYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqTSg-0002Wi-7B; Thu, 25 Jul 2019 02:26:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqTSQ-0002WF-Sb
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 02:26:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id 19so21890203pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 19:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rDiLShrDC8kXE/WTfd9b1UXLyI+P3zktjRDiUd/p51s=;
 b=Lyp35NU9rgi/xE9LSFdJz8ucylAhLT0GpyLYrfePckLaatp+bs/dAIBPEUj3OcZBz5
 4Lx2lPghPYXcg2qAoaSI8p/zmdsv36ZFuYW9KVIXpY5Mjy6qunX58zXV6Vron6HH1fnm
 9ullmXGJogZxip19X+ahHyzSXz5X/RX5YF78PvSIDXZMb20m3R848GDk8EVXmFfrtg2C
 glLD7B33N9tArYgV4DdYtT2Pb7Xp7C4oBSj3Gn6yOOMC00Cs+FzPmaW8MecDwSOyex7j
 j+VM6enOhfpwoSFpnWzvNd75hAIU04SsgeRto5ZwSSSnbAeJE6Hkqi6ArIsYmXzG6Fo1
 lxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rDiLShrDC8kXE/WTfd9b1UXLyI+P3zktjRDiUd/p51s=;
 b=fa8rgUyLGDIlc9aMx5BCoee/4o4xcASYcjTeVuQ+iebS2nmjsKOWAQh43vp5AUmkAw
 e1/QDZKiUUDQBwvKrjyqOxGNtNzql9As4bEojvBjgnTsdrH9gtf2QOpRgprt6YJ3DAVk
 81ZRRA4WDAHt9qZADWek/6SMqAVlDjFJ5fz6kkpiV5WnmV+QE2oy6mFnAKWstmXwzZnu
 +8fDvsmCHQ23Qhj1a9KNbd9Q38rH3LojcQDS9TVfsTuWzt5/z7YpvSJmbx2/tYyxm5nw
 Osuqf/sYW1GN7KvmQ2/KirfWjZtZAZa88X889vGZY850ZZuJvcM5XIPhmOG/QZK4rfT4
 96aA==
X-Gm-Message-State: APjAAAWChm4ozBr6qK0LynSyFO34zjOxI+h34XRgz85ry9UcqFbrfgbD
 rVKskFE6zMW4bB4lyBFywniEYA==
X-Google-Smtp-Source: APXvYqyG5lBxKIdnc+rgbPIFai7y5A3KdoVj2i2HUWnhYnSV0eT+/UbQI3E/MDXyuB7N3zQiw+L5Wg==
X-Received: by 2002:aa7:93a5:: with SMTP id x5mr14023218pff.87.1564021573878; 
 Wed, 24 Jul 2019 19:26:13 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 143sm70120417pgc.6.2019.07.24.19.26.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 19:26:13 -0700 (PDT)
Date: Thu, 25 Jul 2019 07:56:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 1/4] dt-bindings: opp: Support multiple opp-suspend
 properties
Message-ID: <20190725022611.f6dirdstu3yndcwy@vireshk-i7>
References: <20190709080015.43442-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709080015.43442-1-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_192614_933016_63EA1407 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, mark.rutland@arm.com, ping.bai@nxp.com, ccaione@baylibre.com,
 agx@sigxcpu.org, angus@akkea.ca, leonard.crestez@nxp.com, festevam@gmail.com,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, vireshk@kernel.org,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-pm@vger.kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, shawnguo@kernel.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-07-19, 16:00, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Update opp-suspend property's description to support multiple
> opp-suspend properties defined in DT, the OPP with highest opp-hz
> and with opp-suspend property present will be used as suspend opp.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch.
> ---
>  Documentation/devicetree/bindings/opp/opp.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
