Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630291F9F59
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 20:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqNz04T9vBPJJuBnRpjyr3APILJrAOCKy5GcK4+8Tpw=; b=nlBMaBKxcr0O9b
	XIl0n22XmwHG4IiZzf3XispSNzfozdC0aB5TfpPQ+o2InMymiyVJlNghDEEtAe1FdOfnuEz8VPeoL
	YCiVSsUAOIlGiJCsdO/1D881haA4RhyKK32T5mueCjFsEJz/c7twzekDPfI20SzNL/l1xjdqWWbxm
	hHZwom7MhlcDsz8/FLhdeYL6e6cUpBTOw05+1ziqCX8PINr0qA18Yuz2lYA7o9Cx1qDcAuGbVUXTM
	RGfIAXrWQ1ks479bsV2xvoYgAwpZq5Bkyk6iVUoens9YtXmNtK6Zq834cKtJI1IijuOorlYVs3rL8
	ZfB91KBwTqT1haBYgbsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jktnU-0001zd-Dn; Mon, 15 Jun 2020 18:25:28 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jktnA-0000mq-Si
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 18:25:12 +0000
IronPort-SDR: TZFybN0K+wfrInA/Qd3Ji5PSdFnJKT8yDGqud2z7xqB0l53nhP9phGaXzBw70iuJXlaf6SUZdh
 mggPKmH8XFTg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 11:25:07 -0700
IronPort-SDR: bqbLx2uTXDz/wCZtcYgHWbUFebjmB3BE6kGjd0v0QjBzmOr1fOWAnZKB0XLTPUYDYMMUoWQRii
 3KVQdQQRciZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="449494321"
Received: from ifaivilx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.35.251])
 by orsmga005.jf.intel.com with ESMTP; 15 Jun 2020 11:24:58 -0700
Date: Mon, 15 Jun 2020 21:24:57 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [PATCH v5 1/4] KEYS: trusted: Add generic trusted keys framework
Message-ID: <20200615182457.GB5416@linux.intel.com>
References: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
 <1591107505-6030-2-git-send-email-sumit.garg@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591107505-6030-2-git-send-email-sumit.garg@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_112509_077970_275407C8 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue, Jun 02, 2020 at 07:48:22PM +0530, Sumit Garg wrote:
> diff --git a/security/keys/Kconfig b/security/keys/Kconfig
> index 47c0415..22632c6 100644
> --- a/security/keys/Kconfig
> +++ b/security/keys/Kconfig
> @@ -72,17 +72,26 @@ config BIG_KEYS
>  
>  config TRUSTED_KEYS
>  	tristate "TRUSTED KEYS"
> -	depends on KEYS && TCG_TPM
> +	depends on KEYS
> +	help
> +	  This option provides support for creating, sealing, and unsealing
> +	  keys in the kernel. Trusted keys are random number symmetric keys,
> +	  generated and sealed by a trust source (TPM or TEE). Userspace will
> +	  only ever see encrypted blobs.
> +
> +	  If you are unsure as to whether this is required, answer N.
> +
> +config TRUSTED_TPM

TRUSTED_TPM_KEYS

> +	bool "TPM based TRUSTED KEYS"
> +	depends on TRUSTED_KEYS && TCG_TPM
>  	select CRYPTO
>  	select CRYPTO_HMAC
>  	select CRYPTO_SHA1
>  	select CRYPTO_HASH_INFO
>  	help
> -	  This option provides support for creating, sealing, and unsealing
> -	  keys in the kernel. Trusted keys are random number symmetric keys,
> -	  generated and RSA-sealed by the TPM. The TPM only unseals the keys,
> -	  if the boot PCRs and other criteria match.  Userspace will only ever
> -	  see encrypted blobs.
> +	  This option provides support for TPM based trusted keys where TPM acts
> +	  as the trust source. The keys are RSA-sealed by the TPM and it only
> +	  unseals the keys, if the boot PCRs and other criteria match.
>  
>  	  If you are unsure as to whether this is required, answer N.
>  
> diff --git a/security/keys/trusted-keys/Makefile b/security/keys/trusted-keys/Makefile
> index 7b73ceb..03c3ad4 100644
> --- a/security/keys/trusted-keys/Makefile
> +++ b/security/keys/trusted-keys/Makefile
> @@ -4,5 +4,6 @@
>  #
>  
>  obj-$(CONFIG_TRUSTED_KEYS) += trusted.o
> -trusted-y += trusted_tpm1.o
> -trusted-y += trusted_tpm2.o
> +trusted-y += trusted_core.o
> +trusted-$(CONFIG_TRUSTED_TPM) += trusted_tpm1.o
> +trusted-$(CONFIG_TRUSTED_TPM) += trusted_tpm2.o
> diff --git a/security/keys/trusted-keys/trusted_core.c b/security/keys/trusted-keys/trusted_core.c
> new file mode 100644
> index 0000000..3d07d27
> --- /dev/null
> +++ b/security/keys/trusted-keys/trusted_core.c
> @@ -0,0 +1,319 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2010 IBM Corporation
> + * Copyright (c) 2019, Linaro Limited
> + *
> + * Author:
> + * David Safford <safford@us.ibm.com>
> + * Added generic trusted key framework: Sumit Garg <sumit.garg@linaro.org>

Rather remove David's because

1. Git log gives a verifiable and exact log of authority.
2. David's commit was done post-epoch of Git.

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
> +#if defined(CONFIG_TRUSTED_TPM)
> +static struct trusted_key_ops *trusted_key_ops = &tpm_trusted_key_ops;
> +#else
> +static struct trusted_key_ops *trusted_key_ops;
> +#endif

You should just have

extern trusted_key_ops *trusted_key_ops;

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
> +	p->migratable = trusted_key_ops->migratable;
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
> +		ret = trusted_key_ops->unseal(payload, datablob);
> +		dump_payload(payload);
> +		if (ret < 0)
> +			pr_info("trusted_key: key_unseal failed (%d)\n", ret);
> +		break;
> +	case Opt_new:
> +		key_len = payload->key_len;
> +		ret = trusted_key_ops->get_random(payload->key, key_len);
> +		if (ret != key_len) {
> +			pr_info("trusted_key: key_create failed (%d)\n", ret);
> +			goto out;
> +		}
> +
> +		ret = trusted_key_ops->seal(payload, datablob);
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
> +	ret = trusted_key_ops->seal(new_p, datablob);
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
> +	int ret;
> +
> +	/*
> +	 * encrypted_keys.ko depends on successful load of this module even if
> +	 * trusted key implementation is not found.
> +	 */
> +	if (!trusted_key_ops)
> +		return 0;
> +
> +	ret = trusted_key_ops->init();
> +	if (ret == -ENODEV)
> +		return 0;
> +
> +	return ret;
> +}
> +
> +static void __exit cleanup_trusted(void)
> +{
> +	trusted_key_ops->exit();
> +}
> +
> +late_initcall(init_trusted);
> +module_exit(cleanup_trusted);
> +
> +MODULE_LICENSE("GPL");
> diff --git a/security/keys/trusted-keys/trusted_tpm1.c b/security/keys/trusted-keys/trusted_tpm1.c
> index 8001ab0..e378b27 100644
> --- a/security/keys/trusted-keys/trusted_tpm1.c
> +++ b/security/keys/trusted-keys/trusted_tpm1.c
> @@ -1,29 +1,26 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2010 IBM Corporation
> + * Copyright (c) 2019, Linaro Limited
>   *
>   * Author:
>   * David Safford <safford@us.ibm.com>
> + * Switch to generic trusted key framework: Sumit Garg <sumit.garg@linaro.org>
>   *
>   * See Documentation/security/keys/trusted-encrypted.rst
>   */
>  
>  #include <crypto/hash_info.h>
> -#include <linux/uaccess.h>
> -#include <linux/module.h>
>  #include <linux/init.h>
>  #include <linux/slab.h>
>  #include <linux/parser.h>
>  #include <linux/string.h>
>  #include <linux/err.h>
> -#include <keys/user-type.h>
>  #include <keys/trusted-type.h>
>  #include <linux/key-type.h>
> -#include <linux/rcupdate.h>
>  #include <linux/crypto.h>
>  #include <crypto/hash.h>
>  #include <crypto/sha.h>
> -#include <linux/capability.h>
>  #include <linux/tpm.h>
>  #include <linux/tpm_command.h>
>  
> @@ -703,7 +700,6 @@ static int key_unseal(struct trusted_key_payload *p,
>  
>  enum {
>  	Opt_err,
> -	Opt_new, Opt_load, Opt_update,
>  	Opt_keyhandle, Opt_keyauth, Opt_blobauth,
>  	Opt_pcrinfo, Opt_pcrlock, Opt_migratable,
>  	Opt_hash,
> @@ -712,9 +708,6 @@ enum {
>  };
>  
>  static const match_table_t key_tokens = {
> -	{Opt_new, "new"},
> -	{Opt_load, "load"},
> -	{Opt_update, "update"},
>  	{Opt_keyhandle, "keyhandle=%s"},
>  	{Opt_keyauth, "keyauth=%s"},
>  	{Opt_blobauth, "blobauth=%s"},
> @@ -841,71 +834,6 @@ static int getoptions(char *c, struct trusted_key_payload *pay,
>  	return 0;
>  }
>  
> -/*
> - * datablob_parse - parse the keyctl data and fill in the
> - * 		    payload and options structures
> - *
> - * On success returns 0, otherwise -EINVAL.
> - */
> -static int datablob_parse(char *datablob, struct trusted_key_payload *p,
> -			  struct trusted_key_options *o)
> -{
> -	substring_t args[MAX_OPT_ARGS];
> -	long keylen;
> -	int ret = -EINVAL;
> -	int key_cmd;
> -	char *c;
> -
> -	/* main command */
> -	c = strsep(&datablob, " \t");
> -	if (!c)
> -		return -EINVAL;
> -	key_cmd = match_token(c, key_tokens, args);
> -	switch (key_cmd) {
> -	case Opt_new:
> -		/* first argument is key size */
> -		c = strsep(&datablob, " \t");
> -		if (!c)
> -			return -EINVAL;
> -		ret = kstrtol(c, 10, &keylen);
> -		if (ret < 0 || keylen < MIN_KEY_SIZE || keylen > MAX_KEY_SIZE)
> -			return -EINVAL;
> -		p->key_len = keylen;
> -		ret = getoptions(datablob, p, o);
> -		if (ret < 0)
> -			return ret;
> -		ret = Opt_new;
> -		break;
> -	case Opt_load:
> -		/* first argument is sealed blob */
> -		c = strsep(&datablob, " \t");
> -		if (!c)
> -			return -EINVAL;
> -		p->blob_len = strlen(c) / 2;
> -		if (p->blob_len > MAX_BLOB_SIZE)
> -			return -EINVAL;
> -		ret = hex2bin(p->blob, c, p->blob_len);
> -		if (ret < 0)
> -			return -EINVAL;
> -		ret = getoptions(datablob, p, o);
> -		if (ret < 0)
> -			return ret;
> -		ret = Opt_load;
> -		break;
> -	case Opt_update:
> -		/* all arguments are options */
> -		ret = getoptions(datablob, p, o);
> -		if (ret < 0)
> -			return ret;
> -		ret = Opt_update;
> -		break;
> -	case Opt_err:
> -		return -EINVAL;
> -		break;
> -	}
> -	return ret;
> -}
> -
>  static struct trusted_key_options *trusted_options_alloc(void)
>  {
>  	struct trusted_key_options *options;
> @@ -926,248 +854,99 @@ static struct trusted_key_options *trusted_options_alloc(void)
>  	return options;
>  }
>  
> -static struct trusted_key_payload *trusted_payload_alloc(struct key *key)
> +static int tpm_trusted_seal(struct trusted_key_payload *p, char *datablob)
>  {
> -	struct trusted_key_payload *p = NULL;
> -	int ret;
> -
> -	ret = key_payload_reserve(key, sizeof *p);
> -	if (ret < 0)
> -		return p;
> -	p = kzalloc(sizeof *p, GFP_KERNEL);
> -	if (p)
> -		p->migratable = 1; /* migratable by default */
> -	return p;
> -}
> -
> -/*
> - * trusted_instantiate - create a new trusted key
> - *
> - * Unseal an existing trusted blob or, for a new key, get a
> - * random key, then seal and create a trusted key-type key,
> - * adding it to the specified keyring.
> - *
> - * On success, return 0. Otherwise return errno.
> - */
> -static int trusted_instantiate(struct key *key,
> -			       struct key_preparsed_payload *prep)
> -{
> -	struct trusted_key_payload *payload = NULL;
>  	struct trusted_key_options *options = NULL;
> -	size_t datalen = prep->datalen;
> -	char *datablob;
>  	int ret = 0;
> -	int key_cmd;
> -	size_t key_len;
>  	int tpm2;
>  
>  	tpm2 = tpm_is_tpm2(chip);
>  	if (tpm2 < 0)
>  		return tpm2;
>  
> -	if (datalen <= 0 || datalen > 32767 || !prep->data)
> -		return -EINVAL;
> -
> -	datablob = kmalloc(datalen + 1, GFP_KERNEL);
> -	if (!datablob)
> -		return -ENOMEM;
> -	memcpy(datablob, prep->data, datalen);
> -	datablob[datalen] = '\0';
> -
>  	options = trusted_options_alloc();
> -	if (!options) {
> -		ret = -ENOMEM;
> -		goto out;
> -	}
> -	payload = trusted_payload_alloc(key);
> -	if (!payload) {
> -		ret = -ENOMEM;
> -		goto out;
> -	}
> +	if (!options)
> +		return -ENOMEM;
>  
> -	key_cmd = datablob_parse(datablob, payload, options);
> -	if (key_cmd < 0) {
> -		ret = key_cmd;
> +	ret = getoptions(datablob, p, options);
> +	if (ret < 0)
>  		goto out;
> -	}
> +	dump_options(options);
>  
>  	if (!options->keyhandle) {
>  		ret = -EINVAL;
>  		goto out;
>  	}
>  
> -	dump_payload(payload);
> -	dump_options(options);
> +	if (tpm2)
> +		ret = tpm2_seal_trusted(chip, p, options);
> +	else
> +		ret = key_seal(p, options);
> +	if (ret < 0) {
> +		pr_info("tpm_trusted_key: key_seal failed (%d)\n", ret);
> +		goto out;
> +	}
>  
> -	switch (key_cmd) {
> -	case Opt_load:
> -		if (tpm2)
> -			ret = tpm2_unseal_trusted(chip, payload, options);
> -		else
> -			ret = key_unseal(payload, options);
> -		dump_payload(payload);
> -		dump_options(options);
> -		if (ret < 0)
> -			pr_info("trusted_key: key_unseal failed (%d)\n", ret);
> -		break;
> -	case Opt_new:
> -		key_len = payload->key_len;
> -		ret = tpm_get_random(chip, payload->key, key_len);
> -		if (ret != key_len) {
> -			pr_info("trusted_key: key_create failed (%d)\n", ret);
> +	if (options->pcrlock) {
> +		ret = pcrlock(options->pcrlock);
> +		if (ret < 0) {
> +			pr_info("tpm_trusted_key: pcrlock failed (%d)\n", ret);
>  			goto out;
>  		}
> -		if (tpm2)
> -			ret = tpm2_seal_trusted(chip, payload, options);
> -		else
> -			ret = key_seal(payload, options);
> -		if (ret < 0)
> -			pr_info("trusted_key: key_seal failed (%d)\n", ret);
> -		break;
> -	default:
> -		ret = -EINVAL;
> -		goto out;
>  	}
> -	if (!ret && options->pcrlock)
> -		ret = pcrlock(options->pcrlock);
>  out:
> -	kzfree(datablob);
>  	kzfree(options);
> -	if (!ret)
> -		rcu_assign_keypointer(key, payload);
> -	else
> -		kzfree(payload);
>  	return ret;
>  }
>  
> -static void trusted_rcu_free(struct rcu_head *rcu)
> +static int tpm_trusted_unseal(struct trusted_key_payload *p, char *datablob)
>  {
> -	struct trusted_key_payload *p;
> -
> -	p = container_of(rcu, struct trusted_key_payload, rcu);
> -	kzfree(p);
> -}
> -
> -/*
> - * trusted_update - reseal an existing key with new PCR values
> - */
> -static int trusted_update(struct key *key, struct key_preparsed_payload *prep)
> -{
> -	struct trusted_key_payload *p;
> -	struct trusted_key_payload *new_p;
> -	struct trusted_key_options *new_o;
> -	size_t datalen = prep->datalen;
> -	char *datablob;
> +	struct trusted_key_options *options = NULL;
>  	int ret = 0;
> +	int tpm2;
>  
> -	if (key_is_negative(key))
> -		return -ENOKEY;
> -	p = key->payload.data[0];
> -	if (!p->migratable)
> -		return -EPERM;
> -	if (datalen <= 0 || datalen > 32767 || !prep->data)
> -		return -EINVAL;
> +	tpm2 = tpm_is_tpm2(chip);
> +	if (tpm2 < 0)
> +		return tpm2;
>  
> -	datablob = kmalloc(datalen + 1, GFP_KERNEL);
> -	if (!datablob)
> +	options = trusted_options_alloc();
> +	if (!options)
>  		return -ENOMEM;
> -	new_o = trusted_options_alloc();
> -	if (!new_o) {
> -		ret = -ENOMEM;
> -		goto out;
> -	}
> -	new_p = trusted_payload_alloc(key);
> -	if (!new_p) {
> -		ret = -ENOMEM;
> -		goto out;
> -	}
>  
> -	memcpy(datablob, prep->data, datalen);
> -	datablob[datalen] = '\0';
> -	ret = datablob_parse(datablob, new_p, new_o);
> -	if (ret != Opt_update) {
> -		ret = -EINVAL;
> -		kzfree(new_p);
> +	ret = getoptions(datablob, p, options);
> +	if (ret < 0)
>  		goto out;
> -	}
> +	dump_options(options);
>  
> -	if (!new_o->keyhandle) {
> +	if (!options->keyhandle) {
>  		ret = -EINVAL;
> -		kzfree(new_p);
>  		goto out;
>  	}
>  
> -	/* copy old key values, and reseal with new pcrs */
> -	new_p->migratable = p->migratable;
> -	new_p->key_len = p->key_len;
> -	memcpy(new_p->key, p->key, p->key_len);
> -	dump_payload(p);
> -	dump_payload(new_p);
> +	if (tpm2)
> +		ret = tpm2_unseal_trusted(chip, p, options);
> +	else
> +		ret = key_unseal(p, options);
> +	if (ret < 0)
> +		pr_info("tpm_trusted_key: key_unseal failed (%d)\n", ret);
>  
> -	ret = key_seal(new_p, new_o);
> -	if (ret < 0) {
> -		pr_info("trusted_key: key_seal failed (%d)\n", ret);
> -		kzfree(new_p);
> -		goto out;
> -	}
> -	if (new_o->pcrlock) {
> -		ret = pcrlock(new_o->pcrlock);
> +	if (options->pcrlock) {
> +		ret = pcrlock(options->pcrlock);
>  		if (ret < 0) {
> -			pr_info("trusted_key: pcrlock failed (%d)\n", ret);
> -			kzfree(new_p);
> +			pr_info("tpm_trusted_key: pcrlock failed (%d)\n", ret);
>  			goto out;
>  		}
>  	}
> -	rcu_assign_keypointer(key, new_p);
> -	call_rcu(&p->rcu, trusted_rcu_free);
>  out:
> -	kzfree(datablob);
> -	kzfree(new_o);
> +	kzfree(options);
>  	return ret;
>  }
>  
> -/*
> - * trusted_read - copy the sealed blob data to userspace in hex.
> - * On success, return to userspace the trusted key datablob size.
> - */
> -static long trusted_read(const struct key *key, char *buffer,
> -			 size_t buflen)
> -{
> -	const struct trusted_key_payload *p;
> -	char *bufp;
> -	int i;
> -
> -	p = dereference_key_locked(key);
> -	if (!p)
> -		return -EINVAL;
> -
> -	if (buffer && buflen >= 2 * p->blob_len) {
> -		bufp = buffer;
> -		for (i = 0; i < p->blob_len; i++)
> -			bufp = hex_byte_pack(bufp, p->blob[i]);
> -	}
> -	return 2 * p->blob_len;
> -}
> -
> -/*
> - * trusted_destroy - clear and free the key's payload
> - */
> -static void trusted_destroy(struct key *key)
> +int tpm_trusted_get_random(unsigned char *key, size_t key_len)
>  {
> -	kzfree(key->payload.data[0]);
> +	return tpm_get_random(chip, key, key_len);
>  }
>  
> -struct key_type key_type_trusted = {
> -	.name = "trusted",
> -	.instantiate = trusted_instantiate,
> -	.update = trusted_update,
> -	.destroy = trusted_destroy,
> -	.describe = user_describe,
> -	.read = trusted_read,
> -};
> -
> -EXPORT_SYMBOL_GPL(key_type_trusted);
> -
>  static void trusted_shash_release(void)
>  {
>  	if (hashalg)
> @@ -1182,14 +961,14 @@ static int __init trusted_shash_alloc(void)
>  
>  	hmacalg = crypto_alloc_shash(hmac_alg, 0, 0);
>  	if (IS_ERR(hmacalg)) {
> -		pr_info("trusted_key: could not allocate crypto %s\n",
> +		pr_info("tpm_trusted_key: could not allocate crypto %s\n",
>  			hmac_alg);
>  		return PTR_ERR(hmacalg);
>  	}
>  
>  	hashalg = crypto_alloc_shash(hash_alg, 0, 0);
>  	if (IS_ERR(hashalg)) {
> -		pr_info("trusted_key: could not allocate crypto %s\n",
> +		pr_info("tpm_trusted_key: could not allocate crypto %s\n",
>  			hash_alg);
>  		ret = PTR_ERR(hashalg);
>  		goto hashalg_fail;
> @@ -1217,16 +996,13 @@ static int __init init_digests(void)
>  	return 0;
>  }
>  
> -static int __init init_trusted(void)
> +static int __init init_tpm_trusted(void)
>  {
>  	int ret;
>  
> -	/* encrypted_keys.ko depends on successful load of this module even if
> -	 * TPM is not used.
> -	 */
>  	chip = tpm_default_chip();
>  	if (!chip)
> -		return 0;
> +		return -ENODEV;
>  
>  	ret = init_digests();
>  	if (ret < 0)
> @@ -1247,7 +1023,7 @@ static int __init init_trusted(void)
>  	return ret;
>  }
>  
> -static void __exit cleanup_trusted(void)
> +static void __exit exit_tpm_trusted(void)
>  {
>  	if (chip) {
>  		put_device(&chip->dev);
> @@ -1257,7 +1033,12 @@ static void __exit cleanup_trusted(void)
>  	}
>  }
>  
> -late_initcall(init_trusted);
> -module_exit(cleanup_trusted);
> -
> -MODULE_LICENSE("GPL");
> +struct trusted_key_ops tpm_trusted_key_ops = {
> +	.migratable = 1, /* migratable by default */
> +	.init = init_tpm_trusted,
> +	.seal = tpm_trusted_seal,
> +	.unseal = tpm_trusted_unseal,
> +	.get_random = tpm_trusted_get_random,
> +	.exit = exit_tpm_trusted,
> +};
> +EXPORT_SYMBOL_GPL(tpm_trusted_key_ops); > -- 

Rename this as trusted_key_ops and remove EXPORT_SYMBOL_GPL()

> 2.7.4
> 

/Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
