Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08C2B5F27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elNyg8+YO7zHykaz4McJNERFYR9h8kp48CJOd4/+42E=; b=bG2YLNafrv3wW4
	BF2wja5o2pMa967VNfw1HxscaD+mGespmfTSyibg5AHN97M7DyUUa0Gz40sgrBNyqYrTm866McV78
	8xNqiTv25nMqozb9vBo3yhqJ/1k0LBkkJAXewdO8/CWsEUGpQ7xqQymmZzfLNABPC3/D2S7AAdqV7
	rSB6amg40tNWF2+qFkwaCgV4SJFC5hXkA4IhzShbzLQps65ZIeKB2/hStJEHxusL9biWov0TbXhP2
	3qCWzcuDz5820cW2f3TTE4xAXdOZVsUAwMQgHQZeuBAtuULVFfYDzIOIp8WuCvpGVnyfhhIZxMFyS
	ej0q4/NldHa4Fryu72hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVIX-0005zW-7I; Wed, 18 Sep 2019 08:26:49 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVHT-00058D-VV
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 08:25:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568795141;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=sCvYaicCVH8OrDZlwsa8ICj82oK2Vn0GFjH/m8a0EOU=;
 b=MOzjZd6gVZGoeY1WWVJIKKivJSxdWUFjYfmmLqFQ14rgDQPNlrF6KFqFIiS1bIHesotMCr
 gG+PGQatrc99YHb9Wqg3PVq9Z0HEFvcat2C6T+nD3xhxTFQ1SWR4lXgHfgccQF73XjHfh/
 B02GEbuRbMohxpZc5uO77G6QkrzVygw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-12-QDDZbATxPrSB8tGsRpif8A-1; Wed, 18 Sep 2019 04:25:40 -0400
Received: by mail-wm1-f71.google.com with SMTP id k9so762341wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 01:25:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+0NSTxt+2cOn/cB86g2+fMxuM9WiNm6PL9JuEvNIK5M=;
 b=CHuN7oPxpK7JHqhwFyPy7qOnkwfDtMoF8Gj3I4CWurrg70owA/8u/BR/k4c4UkRW+j
 rjdM40yYqF+FAwWhPagBpF/mXnqyIW5KLGJTVUctMgT04fjaLNPQElQaudGqv+xkQIlg
 HUiXjBYPLZHhzsQ8mGJv8YbuCYxo4JHTDTCm5NhN78IUKcU+wijovNJVlQN7u84oTr+U
 85PZqi8pd0wbGSUsFofQ1Ge/zAuOYzq3CHNEpawWl0wyGV9CEt/x8KfHyWK90IJyv3Bt
 dCxlwPCWxM7bMiw4U8BXYZR8+pP72160IjnUlIPD+fRV3bMD3DGVklfCnnHteSYV08Pg
 P6Zg==
X-Gm-Message-State: APjAAAUVRjPoXdHjaZFhMqwC87pcbYcDkvicHZhJo9TNEfaVCcaYcuy2
 JqxvdH9phFj7JZbgdBk3ejm5JR7sq5Zs3HxwcyAcsdjdkrppQoIWc9Kt5k3Bg+Bvg7LFLEpyMxm
 3erncJTJ4YUdp3j+6l/1uFQVMPfjNM3PnYIk=
X-Received: by 2002:a5d:4983:: with SMTP id r3mr1910636wrq.194.1568795139046; 
 Wed, 18 Sep 2019 01:25:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwY+BNDBy8hbD47ydvWQhqPwEt4J5QJf1IHJz82EGJ9j3igRSbtePP9u1jlLlqfQ3k5XE2prw==
X-Received: by 2002:a5d:4983:: with SMTP id r3mr1910612wrq.194.1568795138815; 
 Wed, 18 Sep 2019 01:25:38 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id s12sm8726472wra.82.2019.09.18.01.25.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 01:25:38 -0700 (PDT)
Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 sean.j.christopherson@intel.com, maz@kernel.org, richardcochran@gmail.com,
 Mark.Rutland@arm.com, Will.Deacon@arm.com, suzuki.poulose@arm.com
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
Date: Wed, 18 Sep 2019 10:25:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190918080716.64242-5-jianyong.wu@arm.com>
Content-Language: en-US
X-MC-Unique: QDDZbATxPrSB8tGsRpif8A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_012544_138917_5D4455AE 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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
> +	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
> +		getnstimeofday(ts);

This is not Y2038-safe.  Please use ktime_get_real_ts64 instead, and
split the 64-bit seconds value between val[0] and val[1].

However, it seems to me that the new function is not needed and you can
just use ktime_get_snapshot.  You'll get the time in
systime_snapshot->real and the cycles value in systime_snapshot->cycles.

> +		get_current_counterval(&sc);
> +		val[0] = ts->tv_sec;
> +		val[1] = ts->tv_nsec;
> +		val[2] = sc.cycles;
> +		val[3] = 0;
> +		break;

This should return a guest-cycles value.  If the cycles values always
the same between the host and the guest on ARM, then okay.  If not, you
have to apply whatever offset exists.

Thanks,

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
