Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214DCB8894
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 02:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tu+hlF/svVSEjMptX/IgCrUO1o8iPw+lGnNJIVIpAHI=; b=BD5lKBcTnBJlRjUibYNf2FH01
	hlbHhj2HQD1g6Ss7S7KRAWUfWqGK13nEcsS18WGYzOQ35Mrypky6yvF5fkgkz78jucOrYchCdetrx
	vb5sKWPyR36DC10Wnt+hk6rPyc2IcRVa5tC28kDqY6WsXsleX3PxacWJG7kyTJYNYS4m0vq1DzUAJ
	i3CEMGqr4U1m6yQs4gq1hjZkMpxzOb8vhZKbqWXQhqw8JD5mPKyejA0xq06TB+mqqi8+Ars5RG+Sy
	5G/Dv49M8NvgMkB+Pg1NaBo9veOK/tjrKlrSG8s6eWS4WEix9a5ZSirFpelQhwIcHm9foaARXcuVa
	4Pq82aq5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB6qa-0002Yr-Rr; Fri, 20 Sep 2019 00:32:29 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB6qE-0002Xd-Gu; Fri, 20 Sep 2019 00:32:07 +0000
Received: from [10.200.157.35] (unknown [131.107.174.35])
 by linux.microsoft.com (Postfix) with ESMTPSA id 021A920B718D;
 Thu, 19 Sep 2019 17:32:04 -0700 (PDT)
Subject: Re: [RFC PATCH v1 1/1] Add support for arm64 to carry ima measurement
 log in kexec_file_load
To: Thiago Jung Bauermann <bauerman@linux.ibm.com>,
 Mimi Zohar <zohar@linux.ibm.com>
References: <20190913225009.3406-1-prsriva@linux.microsoft.com>
 <20190913225009.3406-2-prsriva@linux.microsoft.com>
 <1568816111.16709.68.camel@linux.ibm.com>
 <1568841696.4733.3.camel@linux.ibm.com>
 <871rwd2ay8.fsf@morokweng.localdomain>
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
Message-ID: <ed2dc633-c691-6789-9c70-e7d37f436a49@linux.microsoft.com>
Date: Thu, 19 Sep 2019 17:32:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <871rwd2ay8.fsf@morokweng.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_173206_586101_C7F13535 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 yamada.masahiro@socionext.com, sboyd@kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 takahiro.akashi@linaro.org, kristina.martsenko@arm.org, duwe@lst.de,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.org,
 linux-integrity@vger.kernel.org, tglx@linutronix.de, allison@lohutok.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/18/2019 8:59 PM, Thiago Jung Bauermann wrote:
> Mimi Zohar <zohar@linux.ibm.com> writes:
>
>> On Wed, 2019-09-18 at 10:15 -0400, Mimi Zohar wrote:
>>
>>>> +	uint64_t tmp_start, tmp_end;
>>>> +
>>>> +	propStart = of_find_property(of_chosen, "linux,ima-kexec-buffer",
>>>> +				     NULL);
>>>> +	if (propStart) {
>>>> +		tmp_start = fdt64_to_cpu(*((const fdt64_t *) propStart));
>>>> +		ret = of_remove_property(of_chosen, propStart);
>>>> +		if (!ret) {
>>>> +			return ret;
>>>> +		}
>>>> +
>>>> +		propEnd = of_find_property(of_chosen,
>>>> +					   "linux,ima-kexec-buffer-end", NULL);
>>>> +		if (!propEnd) {
>>>> +			return -EINVAL;
>>>> +		}
>>>> +
>>>> +		tmp_end = fdt64_to_cpu(*((const fdt64_t *) propEnd));
>>>> +
>>>> +		ret = of_remove_property(of_chosen, propEnd);
>>>> +		if (!ret) {
>>>> +			return ret;
>>>> +		}
>>> There seems to be quite a bit of code duplication in this function and
>>> in ima_get_kexec_buffer().  It could probably be cleaned up with some
>>> refactoring.
>> Sorry, my mistake.  One calls of_get_property(), while the other calls
>> of_find_property().
> of_get_property() is a thin wrapper around of_find_property(), so if
> that's the only difference I think they can still be merged.

I will move to using of_get_property and see if i can reduce the code 
further.

Also address other comments by Mimi in my next iteration.

Thanks,

Prakhar Srivastava


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
