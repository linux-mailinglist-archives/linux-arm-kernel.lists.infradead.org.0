Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AB898DE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kVnb99gATmCDl45fM+3kHxyuNF5f154BCU/N3rcjuUY=; b=m/VmjKXmbPd/1tPHrabKJaEVe
	bQY1WfF9VAhidK5oMVOItK/950vasP5tbvtGxMek7Ib+uJCQFGB6VKniLf80gd+9e2OM70Dpv138/
	SeK9HKDUNkNdVgwtOrj7ChoBY/fR+smgyMTCRhZPAUxOekaWgbZGE5f2ts8sUKwOckHcN/nWZ8ZLC
	qD+aI8NAO774yO1V+qVnNrhLNmAnk957FzNFbqHNd4KMZrMqIsIOsimYpHnPLF/cbVvowfmuY1q09
	Zlk/vVsKdVlj2doFVq4oh8NSYb3yci1UddwcvGIMjGQX6/9ruhRqKOczWv3tg01/zOrpWEHUPmb3b
	jQNYdlwnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iaW-0003vK-6S; Thu, 22 Aug 2019 08:36:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iaD-0003ui-3J
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:36:38 +0000
Received: by mail-wm1-x344.google.com with SMTP id c5so4648142wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 01:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hJPd4fuf0Q0sMRr9w0mel/Ifz7rq6P5j4CBybKzJMwE=;
 b=fTc2ZtuvP7loRUxCeHOgPc6dsw9cJe/gUATYN2BeKfWNZrsYWcd2marjjQdo7Lhqrx
 uLx1AGKf26OHMHtA5xWY3Rg6lgbYTKIL/O5bzItNqUt6HSSN3kKbS+U2utTdXj5gSNya
 L1KuOhXSniwIAEcJ9mY9B5gyHSRy+IbrzJtvOxGPofL6UU4bkSwFvGjfc7VdWBVSbSA1
 emEuDtg2xZZkrdV0Xqj5E0AQreiSXrMoaiUWwrU+t3iCkSZBq2GnSLMpx/JJPXuK1e+M
 2v72qAFJfFW0CyvlVoULupG3ZkhvrmIUF7SwS5HsVUoDhEefcLTyy3UJ4IXjZPjvl1+i
 wOGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hJPd4fuf0Q0sMRr9w0mel/Ifz7rq6P5j4CBybKzJMwE=;
 b=D2OG6JCb2AENHOUeC4jnfOLIy5katW2TK1kkBK8Vb+7l6E2bInSWj4V2QlHD9AxDtZ
 OwEeaFPQnGIkrtLAeSI8uBlVPvKyj4U8Ra84QkpBuafleRsv5zC6jxFB2dt6NhJqvogK
 9sEH0USwCFyxKuTuVxFILWUeG1/UUafmySopYc7GPsKWVL8hDeHQvXfyfv+ck5534uou
 d0WaXn7YsalgYvF6Cq2njSnL2jxAcMoEJlK3G1UGu6TOj0n1nrRncAcpf/5xUeJatSLt
 GDOboBpwOFoxM4SlxfovZcbzQHvrsFc1O5XjT5CWNqLeFXtKhklxWCyrQrObSlYTcu9V
 +MuQ==
X-Gm-Message-State: APjAAAUVqtBaeru9kpHVF5SLkrajHL2zouK948bIpr3+keVlOmbnGE5t
 4c1ordgyoiLJRKQ3QSIbQ7heYw==
X-Google-Smtp-Source: APXvYqyEQYSwVXVVVF28yf/oOta4hazAt8LCB7iogxVzmdxVgpsq3i8NkGlKkfsdl/9+U3jsQN5rDg==
X-Received: by 2002:a1c:eb06:: with SMTP id j6mr5126462wmh.76.1566462995337;
 Thu, 22 Aug 2019 01:36:35 -0700 (PDT)
Received: from ?IPv6:2a00:23c4:f78c:d00:1570:f96d:dab8:76ae?
 ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
 by smtp.gmail.com with ESMTPSA id o17sm21342345wrx.60.2019.08.22.01.36.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 01:36:34 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor
 phandle
To: Rob Herring <robh@kernel.org>
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <20190731082339.20163-3-ccaione@baylibre.com> <20190821181458.GA2886@bogus>
From: Carlo Caione <ccaione@baylibre.com>
Message-ID: <7c5307fe-2762-eefd-5c65-4ff7c4bd2f5d@baylibre.com>
Date: Thu, 22 Aug 2019 09:36:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821181458.GA2886@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_013637_137610_E7CDB99C 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com, khilman@baylibre.com,
 srinivas.kandagatla@linaro.org, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/08/2019 19:14, Rob Herring wrote:
> On Wed, Jul 31, 2019 at 09:23:37AM +0100, Carlo Caione wrote:

> There's no need for 'secure-monitor' anyways. Just do
> 'of_find_compatible_node(NULL, NULL, "amlogic,meson-gxbb-sm")' or search
> for the driver directly. It's not like there's more than one secure
> monitor...

How is hardcoding the secure-monitor directly into the efuse driver 
better than having it referenced in the DT?

Yes, there is one single secure monitor but (even if this is not 
currently the case) several drivers can use it making the secure-monitor 
a resource to be potentially used by several devices.

--
Carlo Caione

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
