Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8A8B5F37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ji2AjsW+mJ1bf7wbWXiQnIGYRSjkVROa9+dYx8yY5VA=; b=dLdg8nagp4oc7X
	RRPiQoltBFlu2Kg1dBxyK1xTLqdEqz4glvOkenT0EgW0U7d8oC//sQ/B067qz06wdIjZXG3FkYssY
	+Q/ZNnfaZbSMNDy6xDpOyH93+gs30FgPcBlcq4Lmqo+6secx77b2syHV73Aiv9f4n/QUdhkEjEqXY
	bgd5QsobOOC9NqqfosCox8kmIbkij8sXg7QzIHwNcpwTUKA8SfC4WW5AkiRDtcc5w8vlmVboqFo/c
	OFk27quJFSgnoabQGU+55DspiW4woZvttNwem9noXHC4gc8ePBZLH9X1BiMtIYOJNWNmkZm/uKZCh
	69ldyVGyqh8+jZv27mkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVL3-00074p-Ia; Wed, 18 Sep 2019 08:29:25 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVKr-00073y-LU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 08:29:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568795351;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=LJ9x17++JlMAzSbihcUye9RvbBXaphj4wbKaTaSMCiA=;
 b=giHdDCOttEo+F+GVdxwAbVPfmLyhfnxvvw5obFR+Gb+nRNMT79HttAzJvcF35UkJwob0x6
 7bfXq+nIpAiAxWmapBI+/eLQEhjJI8ZzM1WKJDJXp39ugo5hW59BRWMMN75guFkA7G6izs
 6GWb46wUKGl8ECcGNLlaqBq6e0dpHrM=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-281-CVmgC-3xPcWdA9SsS-YFXg-1; Wed, 18 Sep 2019 04:29:09 -0400
Received: by mail-wr1-f72.google.com with SMTP id v18so2075283wro.16
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 01:29:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IrWbIprHqWMlOEd3b8M/gmFgeShWjRa194btm7DSbPI=;
 b=duKRMg8DBoMKGXEp11C0Q6Sk9FUEl+/FyXIEjU3rsrT1sdktleVpTKVJLwXSZLZf25
 cyzlxekebke4bQxF3LAcm2a6p3A1Y/bxGTCizOVu4+sJaVQfMxxP04jVMo/DtXJaCRwl
 u4lxvDGncUV2HVMLYF2s21hDBIlQDTo97OACoRB+lJtRz1wknlqvR+0r1yoVK8kHeAOx
 ZvQsD4eofTKo7wuD0Yjj5uCHWbo4xaKCilBs3PcsrrNfJ1cbdkJyw+BTT2i2etBekztj
 UqGfQCsJy3q53xOTomWM12g+xFalFeZEd72z4fE8tpC3MARRnoJBHrn00exymMLBtqOn
 8bMA==
X-Gm-Message-State: APjAAAVKndPYq9Q7GhoioCQhYSxSlWSzbiz/WFYr7bpuZHLhBMb28f3A
 R5blD0IzXQXKi024xjAuXeS6BreKw5iAyGSBpT+v6JKRofd/yFo5754GvsmgQFhMj4cirw4RPr2
 ES5wFdXMwpYBs5I6qaYGSYK14R3uN4g5pn0M=
X-Received: by 2002:a5d:5381:: with SMTP id d1mr1854485wrv.315.1568795347877; 
 Wed, 18 Sep 2019 01:29:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyonIjdT3rqMK/eFGzZQnLolYQxc5RAG8w8enPADilIGLfzNNbF2gDa1S1gTXGi5dhHblr98w==
X-Received: by 2002:a5d:5381:: with SMTP id d1mr1854455wrv.315.1568795347599; 
 Wed, 18 Sep 2019 01:29:07 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id u22sm8125812wru.72.2019.09.18.01.29.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 01:29:07 -0700 (PDT)
Subject: Re: [RFC PATCH v3 3/6] timekeeping: Expose API allowing retrival of
 current clocksource and counter value
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 sean.j.christopherson@intel.com, maz@kernel.org, richardcochran@gmail.com,
 Mark.Rutland@arm.com, Will.Deacon@arm.com, suzuki.poulose@arm.com
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-4-jianyong.wu@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <aecdffc5-7d15-6183-f8ea-ed557631cf75@redhat.com>
Date: Wed, 18 Sep 2019 10:29:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190918080716.64242-4-jianyong.wu@arm.com>
Content-Language: en-US
X-MC-Unique: CVmgC-3xPcWdA9SsS-YFXg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_012913_793773_E5B9310B 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com, nd@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/09/19 10:07, Jianyong Wu wrote:
> From Marc Zyngier <maz@kernel.org>
> A number of PTP drivers (such as ptp-kvm) are assuming what the
> current clock source is, which could lead to interesting effects on
> systems where the clocksource can change depending on external events.
> 
> For this purpose, add a new API that retrives both the current
> monotonic clock as well as its counter value.
> 
> From Jianyong Wu: export this API then modules can use it.

See review of patch 4.  ktime_get_snapshot is even better for your
needs, if I'm not mistaken.

Paolo

> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  include/linux/timekeeping.h |  3 +++
>  kernel/time/timekeeping.c   | 13 +++++++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
> index a8ab0f143ac4..a5389adaa8bc 100644
> --- a/include/linux/timekeeping.h
> +++ b/include/linux/timekeeping.h
> @@ -247,6 +247,9 @@ extern int get_device_system_crosststamp(
>  			struct system_time_snapshot *history,
>  			struct system_device_crosststamp *xtstamp);
>  
> +/* Obtain current monotonic clock and its counter value  */
> +extern void get_current_counterval(struct system_counterval_t *sc);
> +
>  /*
>   * Simultaneously snapshot realtime and monotonic raw clocks
>   */
> diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
> index 44b726bab4bd..07a0969625b1 100644
> --- a/kernel/time/timekeeping.c
> +++ b/kernel/time/timekeeping.c
> @@ -1098,6 +1098,19 @@ static bool cycle_between(u64 before, u64 test, u64 after)
>  	return false;
>  }
>  
> +/**
> + * get_current_counterval - Snapshot the current clocksource and counter value
> + * @sc:	Pointer to a struct containing the current clocksource and its value
> + */
> +void get_current_counterval(struct system_counterval_t *sc)
> +{
> +	struct timekeeper *tk = &tk_core.timekeeper;
> +
> +	sc->cs = READ_ONCE(tk->tkr_mono.clock);
> +	sc->cycles = sc->cs->read(sc->cs);
> +}
> +EXPORT_SYMBOL_GPL(get_current_counterval);
> +
>  /**
>   * get_device_system_crosststamp - Synchronously capture system/device timestamp
>   * @get_time_fn:	Callback to get simultaneous device time and
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
