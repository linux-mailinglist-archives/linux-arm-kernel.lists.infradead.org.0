Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2875C11A192
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:44:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WscshEfaQqX84xV17/Umn+PgDf0vj326Bf37fYz3OQ=; b=DB3DdU50P9vSfo
	uN5FRyPz4UCseGxXqxOInyLPjvqH1dC8YDm2+G6BTsSarQ8tT1wqekSLOUeQzKpTNEE69CJ5knhPI
	8+sInbCoCYpgYJ/9ARgyYcpB3X3RpF+9AZkgD17y53YpXV2OvpY9BAWftrhNRh0zgPmx6/v+cqgFF
	esqoNk79KxjvNsS1RN8+4FXdkFEnPH1ovi4l0qe1RWbiXiJjjaauUsVCDHmf2Y8WrR26MBqC/qtw/
	1EH1GeX2n4j/9vMmTVNGP3mzIfDjhwI+tmcuZKUn4AQ8mlLsK2j5kmOmX1IvvPlKkPngVSiP+rqPh
	7KOLJYqRnxCNzj3t/cgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieryj-00016j-Iv; Wed, 11 Dec 2019 02:43:53 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierya-00016Q-8Z
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:43:45 +0000
Received: by mail-pf1-x42e.google.com with SMTP id x184so1006566pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 18:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f2PKZ0IX3cZC2NpOSYKVLllzL+7nLw+rKkD8S3WmyZA=;
 b=w8GhQ+CZvgLHTTZwFdTQUSqsAyRFyIGpQ5AUhBq6xKd+opcy9MSsH7kHo+Oithf6uo
 KjLD6yMvJw8AbCOEsfTqbTrt53AS62NGCorl/kwrMwEh3TEmsPt8ZFyjX1CCEyIhWvIe
 q+uuuytgH4DO2LDHDTQr+60x2isx64yxsQPcL6vd8TJeWJey5lYT7rfW/Ts6E9f8EbJX
 f5ReBR0lnDgN0ds1RUuEpfBF/mpGRluv/iYG87x+U3A+1gg4vaWepMj2IRX6A9b81YGb
 tlrwwNlnTdavD2qbzgQ2Kbz2hZSDoSbVjnNBJqtEpHCT8GIZvMaGObuvpI9DwXriRJW3
 lY+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f2PKZ0IX3cZC2NpOSYKVLllzL+7nLw+rKkD8S3WmyZA=;
 b=c0DN2ylvD3NwSsNfXlTzTDCnWH718qn2O82d/fALBmBNCGK/SPqrrXNnN90c6ocpBB
 Fr4RNVLJ4zNKjdw3WN9nVtEXOr8Z81YeA+jmYjnhZIkM/vHEH87pgkm73gUV9QNqIg2x
 BtplluD58EOx0TZpcdY9kK8mTulIO9t4emt5ksM1oxZmZi5/LYbw3PMN1b9oQ3IMuhzO
 3RqFt9fcX+iInNoFjYsxK8Msg9TZmLe1MHQ2PjMufwCWGnx4oiBmVAwH6VTbRa9N7kYE
 Ob488FVA6ZK3x6vimgqhW1vM/4eZ4Le3H+wPcxZCZzYkHW47H2vFVai3vi3Wzay+iJ8g
 gkJg==
X-Gm-Message-State: APjAAAXIxFPwvSYyUhybkuJuSBZhnVmGl2+1WO8J26uh7KO7fqWRDiBk
 YwtSpVwILI/pb6HxmRwCtEwmkg==
X-Google-Smtp-Source: APXvYqyVfjbcgqNdmMEHFYrJYcZxzszIKGFxppXi7nDzyRsAewfcHmU5EQL6U0AI1uYiJYJ4dueq4w==
X-Received: by 2002:a62:5290:: with SMTP id g138mr1269727pfb.54.1576032223182; 
 Tue, 10 Dec 2019 18:43:43 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id x13sm416889pfc.171.2019.12.10.18.43.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 18:43:42 -0800 (PST)
Date: Wed, 11 Dec 2019 08:13:40 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20191211024340.cvwalbr7tmvfqbrc@vireshk-i7>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <71417ba8-b844-ac96-bcad-4bf48fa8b869@arm.com>
 <20191210053448.ugjzbp2puzvnm37f@vireshk-i7>
 <20191210184633.GC20962@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210184633.GC20962@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_184344_310420_BA218FA2 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Cristian Marussi <cristian.marussi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10-12-19, 18:46, Sudeep Holla wrote:
> May be to some/small extent.
> 
> 1. max_rx_timeout_ms is firmware dependent, maximum time it expects to
>    complete a synchronous request or acknowledge async request(worst case value).
> 2. max_msg_size is maximum size of the buffer we need to allocate, mostly
>    based on the specification and we don't have any more that 0x80. But
>    the custom/vendor specific protocols may wary and hence I thought of
>    keeping it configurable for platforms.
> 3. max_msg is the maximum number of messages the transport can support.
>    This is currently based on the mailbox layer. For SMC/HVC we can have
>    upto nr_cpus, something different for spci/optee. We must be able to
>    make it transport independent if required.
> 
>    This is mainly used to pre-allocate number of (tx/rx) buffers.

So we can only move max_msg to mailbox file and read it along with ops, right ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
