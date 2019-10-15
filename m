Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2D0D83CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GfKyh86zk+RcjJivMUauDq/ICqgMvALCgPoz/Mhqeo=; b=d0XedHaK8i3Lm9
	uP/XrpAuBftOnVOw5k3OacP/jWGf2QiRBNPun1AXAbBNGIuJRltfzHRqcdF2ikGE0FiNTZ1z4+uiL
	nfAtUT3j9atN0yfe+TvuWzzd2P520iTdvPv80B8VIApKRG09sMScaySw0kkSx2t1GMw2+HoEj8P68
	SA2YRbPoqrlG+WEKmVewdmIZgEf78lxP5i9ClheA5hkuCFsHw5sm4FDinIHmROtODFgN8WnWnPxB9
	hZJYd/5ieyR52HA18zXwn0ncERL1Cldhu7ZqCn+0JY2oZl8hjx9ttJ8IEvx521GmxGv0pkRLM449W
	NWbGO2MWdHYJSyqzIPgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVPh-0007PL-FY; Tue, 15 Oct 2019 22:35:33 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVPZ-0007Oj-Qe
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571178924;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9F2rYjWK9ziFocCIMNfTpax2GOtKztQS4lutNS8gIlc=;
 b=TdYZUFJHhW3E+hoz1mNOtbQGN9m3QYlLjkaMHMLvLbvQjKFEBKGUClfNNArlLRUvXqMoJA
 QfwfJB6gJ/Jn/X4UQqJg2gmv4c1hPjH4nbpky/okjiZOkp0J3bsEeyxNNd/TrJufZ8qQK2
 lf5CpQiFOzf1hgA1pv1JFRvq5NejKEI=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-pgOIWezhOlS4b3e6jB1Gew-1; Tue, 15 Oct 2019 18:35:22 -0400
Received: by mail-wr1-f69.google.com with SMTP id m14so10805983wru.17
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:35:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Klw9BBs/uRXS08lOiDz40aM4kc+jmIjD/L7OQgU9RpQ=;
 b=hXM4B9Dx2RqZrMgqfgiwudAWUXhUZ/bVXCEVchN4cvDOeFERlvVtaBAxXijkrxlkK8
 drduZa42kJgJkmNz+3lawkW6tGt90MQZctHa93AQFEsC5BgXAO4cZK5AQb2GQUNbJYZn
 20KgGGCeAUgMKA7uKkwGPb54DUstg55C9niq9qmgaXx2s0eamZttXmC9G0eGkmeofpzZ
 151ZDKf/8xkOqRdF29Go4GDlu09dNSpRA1QkD3n5QQhD6H3wiS3dnpVt9aX3fqDKGBth
 Vs9L1/mfquX8JdacI7MgIFP7XKRLpNSnsfJLhhj43RBAHy5GOtz7J6lSAAeh8h/r3QpP
 Q/qA==
X-Gm-Message-State: APjAAAV/vlLe+LFPh6FEEkcFA4FuCAbBUI3zoD6Z9XGV31QD6f0aL/bo
 gOwR2bwvDknKQTGxdOtzqLd4Sqt8uoRXyDIHF9byd18WNVPJxe8WP+FUco6HiFiuryInl2YF9T1
 Y7Ny/GYCdawrazFi97eEjilMgxOHLH2zmYaM=
X-Received: by 2002:a1c:7e10:: with SMTP id z16mr548006wmc.11.1571178920976;
 Tue, 15 Oct 2019 15:35:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy1iyLLTiDLs+t2SLsnm7KLC4V/LNTF3V6ZsBtx2m2Wming/W18J0rGV7YsyfVCmmOqtU/SdA==
X-Received: by 2002:a1c:7e10:: with SMTP id z16mr547985wmc.11.1571178920686;
 Tue, 15 Oct 2019 15:35:20 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:ddc7:c53c:581a:7f3e?
 ([2001:b07:6468:f312:ddc7:c53c:581a:7f3e])
 by smtp.gmail.com with ESMTPSA id y13sm33305655wrg.8.2019.10.15.15.35.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Oct 2019 15:35:20 -0700 (PDT)
Subject: Re: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
To: Thomas Gleixner <tglx@linutronix.de>, Jianyong Wu <jianyong.wu@arm.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-4-jianyong.wu@arm.com>
 <alpine.DEB.2.21.1910152047490.2518@nanos.tec.linutronix.de>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <cfa31e7c-83c4-0e16-ff7d-c6d6f0160e98@redhat.com>
Date: Wed, 16 Oct 2019 00:35:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1910152047490.2518@nanos.tec.linutronix.de>
Content-Language: en-US
X-MC-Unique: pgOIWezhOlS4b3e6jB1Gew-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_153525_984439_EA1E17FE 
X-CRM114-Status: GOOD (  10.65  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, maz@kernel.org, richardcochran@gmail.com,
 yangbo.lu@nxp.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Kaly.Xin@arm.com, john.stultz@linaro.org,
 netdev@vger.kernel.org, nd@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Steve.Capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/19 22:12, Thomas Gleixner wrote:
> @@ -91,6 +96,7 @@ struct clocksource {
>  	const char *name;
>  	struct list_head list;
>  	int rating;
> +	enum clocksource_ids id;

Why add a global id?  ARM can add it to archdata similar to how x86 has
vclock_mode.  But I still think the right thing to do is to include the
full system_counterval_t in the result of ktime_get_snapshot.  (More in
a second, feel free to reply to the other email only).

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
