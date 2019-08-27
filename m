Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BF89F5BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+N6JuSp9Uc8amypYcb4E/tX7TviWaGknPH2sFyi8EM=; b=LhDDaN4RHoObqy
	QbkpThSj6z696foQFg8/9lJeguHReH2OT3Oqd3xyKoaPmVmViKaire3JM1LEv4DN/KTiYpeZDyy2T
	n0U+T0D5gHqlSN4BytaYKi6Y3rMRYCBJR/uPf6Wk4OHTIaljwqkZHjGag72PqTLcZvw0kKFEKgEad
	t42oSD2+PraokfnbkACSsMpBj/baLWj57pZwS2KG9yXJktyuhcCd8dgfL8DV5vrGH2SQsL9AznXq2
	rAAAUmH/tDiVkQh3di9PCd3jUcx/5FEp1TiE9CC7VMgY/PPMCiXidLSC0dL+IxiifUD5m8n04IyWL
	dnykEm2mcAnpONFfLUmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jV2-00063l-AY; Tue, 27 Aug 2019 21:59:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jUf-00061R-HT
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 21:59:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id bj8so198815plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 14:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=TdYOcDy5jsMWziyheC0sLWKkoIn520mmauZjzHRKXw0=;
 b=fqX7HAuzT5KuFfsn8d+HExjzxkOeMp9ciR59skQfXichfF0DxduVaNwQa72F8i2JRJ
 RcqtQKXAMQAjfhy1CJChhtF3Sv538PUx6V+L2FZJ/YtfvFAsJYwh2hca4OiQtCwBo9OU
 VwkmnGUC9flIc+hJlh+bpiWQN35phBb0UYpHysFLpKvvDRLPvxMvJ4WUB5kl579mWgYs
 bAQindBZCEfngbh3o6ERCSUnxUSw2SpKuPE4eKM1o1jcYpeviPzHreexlsNAf4KHD2cN
 pDTAB49gxvQx3+ZQK9tVGn5gGVTDK2oG3ZS1sD4ab4bIaRI8r81jBAQbtua9fkMRiijQ
 63CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=TdYOcDy5jsMWziyheC0sLWKkoIn520mmauZjzHRKXw0=;
 b=NsdExCmHjE9aC/H7gRSIcoUzyEiej5piqLvQiPz6qcu/9JBiO8ZE7AZ+KxyfGmIYjW
 tjRtLctW+UfBPuxOvryZxtzXqg/E7kCs4FsoNuZqGj7/PZ9at3oSS1ZrX5D5qoCwAVCd
 fOOAx7nYVmkXqJQ4JOVEYsinE+1rnLSiE4S6iGmnvbYFeQO5eB+NZUtLICIYoxHWfSCI
 vS6gmv4XGwdCfo5w3Ygip/vkhMhvAH7MMwViBtYHZ7VzGKSQhdtVdQgu52O8fFsfppmY
 P5RJXMM7rdCm8eKjWkvWtvkENLuibySwdBsWe/WAe+5ne5GY6PFfm1wwMnnqI8R46RR/
 Fqtw==
X-Gm-Message-State: APjAAAWkMHD5AarkU2IAQvzNbxkI2LcoK4wf1ZtMedkyhzvrVeDsRbcG
 fCyLXRiikdn5Gwut1loMG+ZTiA==
X-Google-Smtp-Source: APXvYqws8hfOSYTfuqQpuIYlzKB7o2Sp5rFJ3VOL35Gaol7mqdAOiWBTbpZz0mLm3qMRR7/MJdUF5g==
X-Received: by 2002:a17:902:9b86:: with SMTP id
 y6mr1087338plp.217.1566943152953; 
 Tue, 27 Aug 2019 14:59:12 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
 by smtp.gmail.com with ESMTPSA id e17sm175950pjt.6.2019.08.27.14.59.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 14:59:12 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [RESEND PATCH v2 00/14] arm64: dts: meson: fixes following YAML
 bindings schemas conversion
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
Date: Tue, 27 Aug 2019 14:59:11 -0700
Message-ID: <7htva2uv68.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_145913_583490_AB9091AA 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> This is the first set of DT fixes following the first YAML bindings conversion
> at [1], [2] and [3].
>
> After this set of fixes, the remaining errors are :
> meson-axg-s400.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
> meson-g12a-sei510.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
> meson-g12b-odroid-n2.dt.yaml: usb-hub: gpios:0:0: 20 is not valid under any of the given schemas
> meson-g12b-odroid-n2.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
> meson-g12a-x96-max.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
>
> These are only cosmetic changes, and should not break drivers implementation
> following the bindings.

Queued for v5.4,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
