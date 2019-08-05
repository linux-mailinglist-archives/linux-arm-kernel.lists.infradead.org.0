Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BB2826FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 23:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3zF4OWSxbzd/f/OvLc220slSMkeUJve/AOtmkBcUy0=; b=hhxkUf5NleUj2x
	UszSJHhH+tIPXR3zZBQvKmFm0u4VafU0zQMqtMu+Dai6wL1xUIQAo1FarLeohpxQBx0G7l66cYZOW
	1xPdGbeU1KnzmHZXuZi6KbganP+U6mG8JgmkGldADjzKZ+AnlxqUJvDlnohdS3kFx3yOsIgq9HX3N
	WwkGvGh0+5xWrH7btwsmSJ8nT64v3IOOjHCu0lIFj7VldvNqfOQ2OkJEQTrzoOnBw70W6N4GKSjvG
	6bVMNmgKCPAUrCMOsN4WRGDVYzai8rqzT4Vj5qicpK6cHJpOLgzHGlvBu/P4a3mxi+QWVbOyt7wP6
	HIB6JkHrV1LVvhLDFapQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukcd-0000Y9-EX; Mon, 05 Aug 2019 21:34:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukcT-0000Xc-GU
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 21:34:19 +0000
Received: by mail-pg1-x543.google.com with SMTP id r26so4428335pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 14:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=F2uX64SYkhXuVAYwXPHtsBUqPh5ENofxUHIKVtQKuPM=;
 b=0Nz+Ta1FZkq2bl59Lnwi+ADIQcEtXpO7GoSmDFotlB4DDbx+MfHAbnl61CnjEeLRy+
 MWFV38AZ15AuMNS6p9cPpTYUCALo+IltkAN2X/O/AFJcVXAHeaeV7ROG/y0UVWG+bDFt
 G+sbx4WHyImCYjwFN8l4zcfLkq5UEFFEYWxY9ps3T4TwX7CAlkSxzMYGGD4+Rz9mhdHn
 /PXXyCGtg93mkG9P0G8kEdgNiScGdTEtKIv0Wn5qElyULIj+P25BeogD08x2Y/1+cZ4e
 1qVea2envtU49RtTa59QgbP5VgV06N2hf868AljN+byIUwSl7hO9j9TlarrWG9LQmV8n
 yqTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=F2uX64SYkhXuVAYwXPHtsBUqPh5ENofxUHIKVtQKuPM=;
 b=g1H31RAGTF9aBtH+2r/vp/+H/tfc5wjmum4gkz0nBMJSJo2ZeBBDer0ae9RtFX1TU0
 EeI47hs8dC5DjunoaXIPyR4X7iUhbc4lwom9KhneYzf6feWr4aahwqVAgJ0qB2Qf2VoC
 rcM1HDXmOIgIzm+YclRrkJqUjlHJJn4dJsFYEsRrdvg8OTDlmdYG+JepzrnFJac2c1Gc
 GqVUSHhq8gGIQ3+3BPN2kc5ErK7e6ejIjlljUIzqXQeRGYRRvGfFXZu38p70HOCtOi6v
 BW3EYGwZ+xxUjDR174FWJ8+TuuyFcisumb32VG0U4wq9AIWctKRetFErtMcWsSSl7lJA
 UJAw==
X-Gm-Message-State: APjAAAUtWRt7jd0gOSRzfdZA0GoFCciqBU466k4oF1vIzTtMueCkB/ix
 hchtTxXKQChd1bBzg6R+9TyYHQ==
X-Google-Smtp-Source: APXvYqyTRc9wk/7gZzo3oYc7gfG6drD7WGtyiftHDhpF6Sr+RFqFazws+aVRlqNv57SQeqkPNr2eOw==
X-Received: by 2002:a62:5883:: with SMTP id m125mr87689pfb.248.1565040856849; 
 Mon, 05 Aug 2019 14:34:16 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7483:80d6:7f67:2672])
 by smtp.googlemail.com with ESMTPSA id
 j5sm101076110pfi.104.2019.08.05.14.34.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 14:34:16 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Carlo Caione <ccaione@baylibre.com>, srinivas.kandagatla@linaro.org, 
Subject: Re: [PATCH v2 0/4] Rework secure-monitor driver
In-Reply-To: <20190731082339.20163-1-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
Date: Mon, 05 Aug 2019 14:34:15 -0700
Message-ID: <7hftmfguug.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_143417_555776_F65947A4 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Carlo Caione <ccaione@baylibre.com>, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Srinivas,

Carlo Caione <ccaione@baylibre.com> writes:

> The secure-monitor driver is currently in really bad shape, not my 
> proudest piece of code (thanks Jerome for pointing that out ;). I tried 
> to rework it a bit to make it a bit more tolerable.
>
> I needed to change a bit the APIs and consequently adapt the only user 
> we have, that is the nvmem/efuses driver. To not break bisectability I 
> added one single commit to change both the drivers.

With your ack on the nvmem bindings and nvmem part of patch 4/4, I can
take the series take the rest of this series through my tree for Amlogic
SoCs.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
