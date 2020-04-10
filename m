Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144221A48FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEwSvo72jCF3cwvlJjMJ4R6VV8DyglsEbH352vwiv5s=; b=tQmaUSMf65wQCF
	Hfi6MS0Vmwh0/7IwgIpLkEFjv78ls/cghIPy+YqitJq9YY7gfUmSj0cE1prCiqe4wom8pZGp3w/Yd
	7l11vz1PMrwcSOwMuUBbJZ/0rERHlLjQEAFvOoNwoeRSGyFqWiGn7Uyw9CDAkWZESmwz7ppdFOtMu
	hx0qP2zaDUdpdNyeZlbK7WoJ6bYSo5FztTBauRDQ/zyUNOsnMbe1P8NEe9gJn1m7QjY/+BJgF15LS
	kIYqbNQH+fOirYVpyAAzXfM+h7iwGFdux6aOfwKy8E8HRyagXEkpRo11dPr3kzQcVc9i2dUirMFiT
	F3xuagCcWhtsOfFKdurA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxYC-0003De-BM; Fri, 10 Apr 2020 17:34:44 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxY4-0003Cu-MJ; Fri, 10 Apr 2020 17:34:36 +0000
Subject: Re: [PATCH 1/3] counter: add an inkernel API
To: Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200406155806.1295169-2-kamel.bouhara@bootlin.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <7651ea0d-91c2-49db-9af7-b01a78868d7e@infradead.org>
Date: Fri, 10 Apr 2020 10:34:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200406155806.1295169-2-kamel.bouhara@bootlin.com>
Content-Language: en-US
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi--

On 4/6/20 8:58 AM, Kamel Bouhara wrote:
> ---
>  drivers/counter/counter.c | 213 ++++++++++++++++++++++++++++++++++++++
>  include/linux/counter.h   |  27 +++++
>  2 files changed, 240 insertions(+)
> 
> diff --git a/drivers/counter/counter.c b/drivers/counter/counter.c
> index 6a683d086008..f81d2d1dbca7 100644
> --- a/drivers/counter/counter.c
> +++ b/drivers/counter/counter.c

[snip]

Please use
/**
on these functions so that kernel-doc will process them.

> +
> +/*
> + * devm_counter_get - Obtain an exclusive access to a counter.
> + * @dev: device for counter "consumer"
> + *
> + * Returns a struct counter_device matching the counter producer, or
> + * IS_ERR() condition containing errno.
> + *
> + */
> +struct counter_device *devm_counter_get(struct device *dev)
> +{
> +	struct counter_device **ptr, *counter;
> +
> +	ptr = devres_alloc(devm_counter_release, sizeof(*ptr), GFP_KERNEL);
> +	if (!ptr)
> +		return ERR_PTR(-ENOMEM);
> +
> +	counter = counter_get(dev);
> +	if (IS_ERR(counter)) {
> +		devres_free(ptr);
> +		return counter;
> +	}
> +
> +	*ptr = counter;
> +	devres_add(dev, ptr);
> +
> +	return counter;
> +}
> +EXPORT_SYMBOL_GPL(devm_counter_get);
> +
> +/*
> + * counter_action_get - get counter synapse mode
> + * @counter: counter device to operate with
> + * @action: pointer to store the current counter synapse mode

should be @mode: ^^^^^

> + * returns:
> + *	0 on success, error code on failure.
> + */
> +int counter_action_get(struct counter_device *counter, int *mode)
> +{
> +	struct counter_synapse *synapse = counter->counts->synapses;
> +	size_t action_index;
> +	int err;
> +
> +	err = counter->ops->action_get(counter, counter->counts, synapse,
> +				       &action_index);
> +	if (err)
> +		return err;
> +
> +	*mode = synapse->actions_list[action_index];
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(counter_action_get);
> +
> +/*
> + * counter_action_set - set counter device synapse
> + * @counter: counter device to operate with
> + * @action: enum of the synapse mode
> + * returns:
> + *	0 on success, error code on failure.
> + */
> +int counter_action_set(struct counter_device *counter,
> +		       enum counter_synapse_action action)
> +{
> +	struct counter_synapse *synapse = counter->counts->synapses;
> +	const size_t num_actions = synapse->num_actions;
> +	size_t action_index;
> +
> +	/* Find requested action mode */
> +	for (action_index = 0; action_index < num_actions; action_index++) {
> +		if (action == synapse->actions_list[action_index])
> +			break;
> +	}
> +
> +	if (action_index >= num_actions)
> +		return -EINVAL;
> +
> +	return counter->ops->action_set(counter, counter->counts, synapse,
> +					action_index);
> +}
> +EXPORT_SYMBOL_GPL(counter_action_set);
> +
> +/*
> + * counter_function_get - get the count function
> + * @counter: pointer to counter device to operate with
> + * @mode: pointer to store the current counter function mode
> + * returns:
> + *	0 on success, error code on failure.
> + */
> +int counter_function_get(struct counter_device *counter, int *mode)
> +{
> +	size_t func_index;
> +	int err;
> +
> +	err = counter->ops->function_get(counter, counter->counts,
> +					 &func_index);
> +	if (err)
> +		return err;
> +
> +	*mode = counter->counts->functions_list[func_index];
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(counter_function_get);
> +
> +/*
> + * counter_function_set - set a count function
> + * @counter: pointer to a counter device to operate with
> + * @function: enum of the function mode
> + * returns:
> + *	0 on success, error code on failure.
> + */
> +int counter_function_set(struct counter_device *counter,
> +			  enum counter_count_function function)
> +{
> +	const size_t num_functions = counter->counts->num_functions;
> +	size_t func_index;
> +
> +	for (func_index = 0; func_index < num_functions; func_index++) {
> +		if (function == counter->counts->functions_list[func_index])
> +			break;
> +	}
> +
> +	if (func_index >= num_functions)
> +		return -EINVAL;
> +
> +	return counter->ops->function_set(counter, counter->counts, func_index);
> +}
> +EXPORT_SYMBOL_GPL(counter_function_set);
> +
> +/*
> + * counter_count_set - set a count value
> + * @counter: pointer to the counter device to operate with
> + * @val: count value to write into the counter
> + * @len: length of the value written to the counter
> + * returns:
> + *	bytes length of the value on success, error code on failure.
> + */
> +size_t counter_count_set(struct counter_device *counter,
> +			 unsigned long val, size_t len)
> +{
> +	return counter->ops->count_write(counter, counter->counts, val);
> +}
> +EXPORT_SYMBOL_GPL(counter_count_set);
> +
> +/*
> + * counter_count_get - read the count value
> + * @counter: pointer to the counter device to operate with
> + * @val: pointer to store the count value
> + * returns:
> + *  0 on success, error code on failure.
> + */
> +int counter_count_get(struct counter_device *counter, unsigned long *val)
> +{
> +	return counter->ops->count_read(counter, counter->counts, val);
> +}
> +EXPORT_SYMBOL_GPL(counter_count_get);
> +
>  /**
>   * devm_counter_unregister - Resource-managed counter_unregister
>   * @dev:	device this counter_device belongs to


thanks.
-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
