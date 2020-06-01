Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAD21E9B94
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 04:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8i1CDHa9xr/a0JFyCYIFzKYN+VZ2Q96JAZCfMLBM0Y=; b=TxzPKiBT41s9j1
	D6Kbeq3lEvoFgKaf3aPbjHaa2OtsAzZN5Fpe06kdoWdtkGfHh0R1K0tuoA/xZHmJK6+rv9/BY+YFq
	8vsognfh24js5Uqo53mMerEe7zdXQoapVrM/J1cqbsc9reiwFau41nxbYTTx6zhzS8SryXsTGHnJi
	Nn8zbBzWjKT/ARy1qflz8nLnf8hS+JybsJTaPCXQh1fkX2l2MVseIQj4APFHABKC8tnbODTPXVF/8
	KUtQesvMt2dpaAKDn68rPzzhXO4A8bD22hDKBwMwnlOpayQQIqgUlnWae9pANmM4f1YA1HcuJznu+
	iPBfQE9X9s7veKEvuViA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfZvZ-00084C-3i; Mon, 01 Jun 2020 02:11:49 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfZvS-00083l-9N
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 02:11:44 +0000
IronPort-SDR: eZYArAdUEEEZrROQlc+yPWwiTOKnsLltcw+w+e2z/MwlNEXueywZMuG5lCDKreH47ehtNhRL09
 rbhCZCUtQ9ow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2020 19:11:40 -0700
IronPort-SDR: py7lmfl5mPW14xQUQxCQ2LCtoZG9ZkZCe1drvXOdHQInGbEOLnF7nMx7/+ubWjlyrJIfZzJn66
 KJjUzaVUbnlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,459,1583222400"; d="scan'208";a="470128095"
Received: from dytagah-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.58.236])
 by fmsmga006.fm.intel.com with ESMTP; 31 May 2020 19:11:33 -0700
Date: Mon, 1 Jun 2020 05:11:32 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [PATCH v4 1/4] KEYS: trusted: Add generic trusted keys framework
Message-ID: <20200601021132.GA796225@linux.intel.com>
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
 <1588758017-30426-2-git-send-email-sumit.garg@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588758017-30426-2-git-send-email-sumit.garg@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_191142_391231_6E95BCBF 
X-CRM114-Status: GOOD (  27.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 op-tee@lists.trustedfirmware.org, corbet@lwn.net, jejb@linux.ibm.com,
 janne.karhunen@gmail.com, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Markus.Wamser@mixed-mode.de, casey@schaufler-ca.com,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 03:10:14PM +0530, Sumit Garg wrote:
> Current trusted keys framework is tightly coupled to use TPM device as
> an underlying implementation which makes it difficult for implementations
> like Trusted Execution Environment (TEE) etc. to provide trusked keys
> support in case platform doesn't posses a TPM device.
> 
> So this patch tries to add generic trusted keys framework where underlying
> implemtations like TPM, TEE etc. could be easily plugged-in.
> 
> Suggested-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> ---
>  include/keys/trusted-type.h                 |  45 ++++
>  include/keys/trusted_tpm.h                  |  15 --
>  security/keys/trusted-keys/Makefile         |   1 +
>  security/keys/trusted-keys/trusted_common.c | 333 +++++++++++++++++++++++++++
>  security/keys/trusted-keys/trusted_tpm1.c   | 335 +++++-----------------------
>  5 files changed, 437 insertions(+), 292 deletions(-)
>  create mode 100644 security/keys/trusted-keys/trusted_common.c
> 
> diff --git a/include/keys/trusted-type.h b/include/keys/trusted-type.h
> index a94c03a..5559010 100644
> --- a/include/keys/trusted-type.h
> +++ b/include/keys/trusted-type.h
> @@ -40,6 +40,51 @@ struct trusted_key_options {
>  	uint32_t policyhandle;
>  };
>  
> +struct trusted_key_ops {
> +	/*
> +	 * flag to indicate if trusted key implementation supports migration
> +	 * or not.
> +	 */
> +	unsigned char migratable;
> +
> +	/* trusted key init */
> +	int (*init)(void);
> +
> +	/* seal a trusted key */
> +	int (*seal)(struct trusted_key_payload *p, char *datablob);
> +
> +	/* unseal a trusted key */
> +	int (*unseal)(struct trusted_key_payload *p, char *datablob);
> +
> +	/* get random trusted key */
> +	int (*get_random)(unsigned char *key, size_t key_len);
> +
> +	/* trusted key cleanup */
> +	void (*cleanup)(void);
> +};
> +
>  extern struct key_type key_type_trusted;
> +#if defined(CONFIG_TCG_TPM)
> +extern struct trusted_key_ops tpm_trusted_key_ops;
> +#endif
> +
> +#define TRUSTED_DEBUG 0
> +
> +#if TRUSTED_DEBUG
> +static inline void dump_payload(struct trusted_key_payload *p)
> +{
> +	pr_info("trusted_key: key_len %d\n", p->key_len);
> +	print_hex_dump(KERN_INFO, "key ", DUMP_PREFIX_NONE,
> +		       16, 1, p->key, p->key_len, 0);
> +	pr_info("trusted_key: bloblen %d\n", p->blob_len);
> +	print_hex_dump(KERN_INFO, "blob ", DUMP_PREFIX_NONE,
> +		       16, 1, p->blob, p->blob_len, 0);
> +	pr_info("trusted_key: migratable %d\n", p->migratable);
> +}
> +#else
> +static inline void dump_payload(struct trusted_key_payload *p)
> +{
> +}
> +#endif
>  
>  #endif /* _KEYS_TRUSTED_TYPE_H */
> diff --git a/include/keys/trusted_tpm.h b/include/keys/trusted_tpm.h
> index a56d8e1..5753231 100644
> --- a/include/keys/trusted_tpm.h
> +++ b/include/keys/trusted_tpm.h
> @@ -60,17 +60,6 @@ static inline void dump_options(struct trusted_key_options *o)
>  		       16, 1, o->pcrinfo, o->pcrinfo_len, 0);
>  }
>  
> -static inline void dump_payload(struct trusted_key_payload *p)
> -{
> -	pr_info("trusted_key: key_len %d\n", p->key_len);
> -	print_hex_dump(KERN_INFO, "key ", DUMP_PREFIX_NONE,
> -		       16, 1, p->key, p->key_len, 0);
> -	pr_info("trusted_key: bloblen %d\n", p->blob_len);
> -	print_hex_dump(KERN_INFO, "blob ", DUMP_PREFIX_NONE,
> -		       16, 1, p->blob, p->blob_len, 0);
> -	pr_info("trusted_key: migratable %d\n", p->migratable);
> -}
> -
>  static inline void dump_sess(struct osapsess *s)
>  {
>  	print_hex_dump(KERN_INFO, "trusted-key: handle ", DUMP_PREFIX_NONE,
> @@ -96,10 +85,6 @@ static inline void dump_options(struct trusted_key_options *o)
>  {
>  }
>  
> -static inline void dump_payload(struct trusted_key_payload *p)
> -{
> -}
> -
>  static inline void dump_sess(struct osapsess *s)
>  {
>  }
> diff --git a/security/keys/trusted-keys/Makefile b/security/keys/trusted-keys/Makefile
> index 7b73ceb..2b1085b 100644
> --- a/security/keys/trusted-keys/Makefile
> +++ b/security/keys/trusted-keys/Makefile
> @@ -4,5 +4,6 @@
>  #
>  
>  obj-$(CONFIG_TRUSTED_KEYS) += trusted.o
> +trusted-y += trusted_common.o
>  trusted-y += trusted_tpm1.o
>  trusted-y += trusted_tpm2.o
> diff --git a/security/keys/trusted-keys/trusted_common.c b/security/keys/trusted-keys/trusted_common.c
> new file mode 100644
> index 0000000..9bfd081
> --- /dev/null
> +++ b/security/keys/trusted-keys/trusted_common.c
> @@ -0,0 +1,333 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2010 IBM Corporation
> + * Copyright (c) 2019, Linaro Limited
> + *
> + * Author:
> + * David Safford <safford@us.ibm.com>
> + * Added generic trusted key framework: Sumit Garg <sumit.garg@linaro.org>
> + *
> + * See Documentation/security/keys/trusted-encrypted.rst
> + */
> +
> +#include <keys/user-type.h>
> +#include <keys/trusted-type.h>
> +#include <linux/capability.h>
> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/key-type.h>
> +#include <linux/module.h>
> +#include <linux/parser.h>
> +#include <linux/rcupdate.h>
> +#include <linux/slab.h>
> +#include <linux/string.h>
> +#include <linux/uaccess.h>
> +
> +static struct trusted_key_ops *available_tk_ops[] = {
> +#if defined(CONFIG_TCG_TPM)
> +	&tpm_trusted_key_ops,
> +#endif
> +};

This, I think is wrong. You should have a compile time flag for TPM e.g.
CONFIG_TRUSTED_TPM, not this dynamic mess.

Please make the whole choice compile time, not run-time.

> +static struct trusted_key_ops *tk_ops;
> +
> +enum {
> +	Opt_err,
> +	Opt_new, Opt_load, Opt_update,
> +};
> +
> +static const match_table_t key_tokens = {
> +	{Opt_new, "new"},
> +	{Opt_load, "load"},
> +	{Opt_update, "update"},
> +	{Opt_err, NULL}
> +};
> +
> +/*
> + * datablob_parse - parse the keyctl data and fill in the
> + *                  payload structure
> + *
> + * On success returns 0, otherwise -EINVAL.
> + */
> +static int datablob_parse(char *datablob, struct trusted_key_payload *p)
> +{
> +	substring_t args[MAX_OPT_ARGS];
> +	long keylen;
> +	int ret = -EINVAL;
> +	int key_cmd;
> +	char *c;
> +
> +	/* main command */
> +	c = strsep(&datablob, " \t");
> +	if (!c)
> +		return -EINVAL;
> +	key_cmd = match_token(c, key_tokens, args);
> +	switch (key_cmd) {
> +	case Opt_new:
> +		/* first argument is key size */
> +		c = strsep(&datablob, " \t");
> +		if (!c)
> +			return -EINVAL;
> +		ret = kstrtol(c, 10, &keylen);
> +		if (ret < 0 || keylen < MIN_KEY_SIZE || keylen > MAX_KEY_SIZE)
> +			return -EINVAL;
> +		p->key_len = keylen;
> +		ret = Opt_new;
> +		break;
> +	case Opt_load:
> +		/* first argument is sealed blob */
> +		c = strsep(&datablob, " \t");
> +		if (!c)
> +			return -EINVAL;
> +		p->blob_len = strlen(c) / 2;
> +		if (p->blob_len > MAX_BLOB_SIZE)
> +			return -EINVAL;
> +		ret = hex2bin(p->blob, c, p->blob_len);
> +		if (ret < 0)
> +			return -EINVAL;
> +		ret = Opt_load;
> +		break;
> +	case Opt_update:
> +		ret = Opt_update;
> +		break;
> +	case Opt_err:
> +		return -EINVAL;
> +	}
> +	return ret;
> +}
> +
> +static struct trusted_key_payload *trusted_payload_alloc(struct key *key)
> +{
> +	struct trusted_key_payload *p = NULL;
> +	int ret;
> +
> +	ret = key_payload_reserve(key, sizeof(*p));
> +	if (ret < 0)
> +		return p;
> +	p = kzalloc(sizeof(*p), GFP_KERNEL);
> +
> +	p->migratable = tk_ops->migratable;
> +
> +	return p;
> +}
> +
> +/*
> + * trusted_instantiate - create a new trusted key
> + *
> + * Unseal an existing trusted blob or, for a new key, get a
> + * random key, then seal and create a trusted key-type key,
> + * adding it to the specified keyring.
> + *
> + * On success, return 0. Otherwise return errno.
> + */
> +static int trusted_instantiate(struct key *key,
> +			       struct key_preparsed_payload *prep)
> +{
> +	struct trusted_key_payload *payload = NULL;
> +	size_t datalen = prep->datalen;
> +	char *datablob;
> +	int ret = 0;
> +	int key_cmd;
> +	size_t key_len;
> +
> +	if (datalen <= 0 || datalen > 32767 || !prep->data)
> +		return -EINVAL;
> +
> +	datablob = kmalloc(datalen + 1, GFP_KERNEL);
> +	if (!datablob)
> +		return -ENOMEM;
> +	memcpy(datablob, prep->data, datalen);
> +	datablob[datalen] = '\0';
> +
> +	payload = trusted_payload_alloc(key);
> +	if (!payload) {
> +		ret = -ENOMEM;
> +		goto out;
> +	}
> +
> +	key_cmd = datablob_parse(datablob, payload);
> +	if (key_cmd < 0) {
> +		ret = key_cmd;
> +		goto out;
> +	}
> +
> +	dump_payload(payload);
> +
> +	switch (key_cmd) {
> +	case Opt_load:
> +		ret = tk_ops->unseal(payload, datablob);
> +		dump_payload(payload);
> +		if (ret < 0)
> +			pr_info("trusted_key: key_unseal failed (%d)\n", ret);
> +		break;
> +	case Opt_new:
> +		key_len = payload->key_len;
> +		ret = tk_ops->get_random(payload->key, key_len);
> +		if (ret != key_len) {
> +			pr_info("trusted_key: key_create failed (%d)\n", ret);
> +			goto out;
> +		}
> +
> +		ret = tk_ops->seal(payload, datablob);
> +		if (ret < 0)
> +			pr_info("trusted_key: key_seal failed (%d)\n", ret);
> +		break;
> +	default:
> +		ret = -EINVAL;
> +	}
> +out:
> +	kzfree(datablob);
> +	if (!ret)
> +		rcu_assign_keypointer(key, payload);
> +	else
> +		kzfree(payload);
> +	return ret;
> +}
> +
> +static void trusted_rcu_free(struct rcu_head *rcu)
> +{
> +	struct trusted_key_payload *p;
> +
> +	p = container_of(rcu, struct trusted_key_payload, rcu);
> +	kzfree(p);
> +}
> +
> +/*
> + * trusted_update - reseal an existing key with new PCR values
> + */
> +static int trusted_update(struct key *key, struct key_preparsed_payload *prep)
> +{
> +	struct trusted_key_payload *p;
> +	struct trusted_key_payload *new_p;
> +	size_t datalen = prep->datalen;
> +	char *datablob;
> +	int ret = 0;
> +
> +	if (key_is_negative(key))
> +		return -ENOKEY;
> +	p = key->payload.data[0];
> +	if (!p->migratable)
> +		return -EPERM;
> +	if (datalen <= 0 || datalen > 32767 || !prep->data)
> +		return -EINVAL;
> +
> +	datablob = kmalloc(datalen + 1, GFP_KERNEL);
> +	if (!datablob)
> +		return -ENOMEM;
> +
> +	new_p = trusted_payload_alloc(key);
> +	if (!new_p) {
> +		ret = -ENOMEM;
> +		goto out;
> +	}
> +
> +	memcpy(datablob, prep->data, datalen);
> +	datablob[datalen] = '\0';
> +	ret = datablob_parse(datablob, new_p);
> +	if (ret != Opt_update) {
> +		ret = -EINVAL;
> +		kzfree(new_p);
> +		goto out;
> +	}
> +
> +	/* copy old key values, and reseal with new pcrs */
> +	new_p->migratable = p->migratable;
> +	new_p->key_len = p->key_len;
> +	memcpy(new_p->key, p->key, p->key_len);
> +	dump_payload(p);
> +	dump_payload(new_p);
> +
> +	ret = tk_ops->seal(new_p, datablob);
> +	if (ret < 0) {
> +		pr_info("trusted_key: key_seal failed (%d)\n", ret);
> +		kzfree(new_p);
> +		goto out;
> +	}
> +
> +	rcu_assign_keypointer(key, new_p);
> +	call_rcu(&p->rcu, trusted_rcu_free);
> +out:
> +	kzfree(datablob);
> +	return ret;
> +}
> +
> +/*
> + * trusted_read - copy the sealed blob data to userspace in hex.
> + * On success, return to userspace the trusted key datablob size.
> + */
> +static long trusted_read(const struct key *key, char *buffer,
> +			 size_t buflen)
> +{
> +	const struct trusted_key_payload *p;
> +	char *bufp;
> +	int i;
> +
> +	p = dereference_key_locked(key);
> +	if (!p)
> +		return -EINVAL;
> +
> +	if (buffer && buflen >= 2 * p->blob_len) {
> +		bufp = buffer;
> +		for (i = 0; i < p->blob_len; i++)
> +			bufp = hex_byte_pack(bufp, p->blob[i]);
> +	}
> +	return 2 * p->blob_len;
> +}
> +
> +/*
> + * trusted_destroy - clear and free the key's payload
> + */
> +static void trusted_destroy(struct key *key)
> +{
> +	kzfree(key->payload.data[0]);
> +}
> +
> +struct key_type key_type_trusted = {
> +	.name = "trusted",
> +	.instantiate = trusted_instantiate,
> +	.update = trusted_update,
> +	.destroy = trusted_destroy,
> +	.describe = user_describe,
> +	.read = trusted_read,
> +};
> +EXPORT_SYMBOL_GPL(key_type_trusted);
> +
> +static int __init init_trusted(void)
> +{
> +	int i, ret = 0;
> +
> +	for (i = 0; i < sizeof(available_tk_ops); i++) {
> +		tk_ops = available_tk_ops[i];
> +
> +		if (!(tk_ops && tk_ops->init && tk_ops->seal &&
> +		      tk_ops->unseal && tk_ops->get_random))
> +			continue;

This check should not exist as there is no legit case for any of these
callbacks missing. Please remove it.

> +
> +		ret = tk_ops->init();
> +		if (ret) {
> +			if (tk_ops->cleanup)
> +				tk_ops->cleanup();

Why is clean up called? What is "clean up"? Init should take care clean
up its dirt if it fails. Please remove the calll to clean up from here.

/Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
