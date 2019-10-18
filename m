Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0084DC715
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ft2hG/L6uaEIsF6wfiXnUAx/fV4BDISLhT5IpM0sefA=; b=eiGbZMqP3yVTPf
	b5Ah1FqY7ttqJf0gCMJBZ5htHOZKTDWSZLatE5k8RQyzmaqMMP3LuVJuziKaCYgcpL0p9FILqCoU0
	j+d5vHw4jaZLNB6FepdTxPsopiP0lqI2A6dJEY4QXNV0aaRknkL9gWtr1tXhWtGMlFPQjqv1AkFe/
	BHgoRJd3TbOJVFFS3LpkIzL6+/bSNakfRuVHnzR4N02rQ+5mRVSdOxp6/aNiPpg3k2i1rxoU76YSo
	GWMx89ZVezr6SUyDhdRT3zYaxl7cgEBdlIIYRVRQ7NmKLe2oGVJRWCiZ2YieYohxxjfxt74rmkOO5
	EmcQLeY6ujp8tbWb9QHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLT2k-0006nn-No; Fri, 18 Oct 2019 14:15:50 +0000
Received: from mail-eopbgr760041.outbound.protection.outlook.com
 ([40.107.76.41] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLT2W-0006mn-S8
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 14:15:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l5GhuayyAroUHaaQOO9rSJ6P2w1bBXOFduUz7H85Y/b7uhTvvfCUWPSPIrpO5NW4g3YkMHiRm12MXcQKs2OJYIW/dAHJVaUOfLYroTK3tAsoc1pOQPNmkA4O3Dr8Q0lbOImvsYFUkfK1jENMO/PVhO370t0DwjFs3M9zJHKg+VdOF1zhjiEbwpongp5H6PqT6Pw7FPNvVMj3QLgtaxmzatJgyl1R/J/DwxZ+kdQ3LuRIjDJ0U4EEb12ltgP8QhM3PTS9YlGgEoaV6Y5rJhhuI7dk5CeBLMXcmgYl+5/wymP3m5KnIeyemLM6KQy/HTbYCpj9YpUJKqFbq8RIFYrRMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/YvLv3yYS9iQ9V2rnwbTVLmpE6aGtqi7Rqnt6Mf4mvc=;
 b=Kb/7nGcXPZMVJigYrMTQqePF5nNRTBBK0dO7etiMmbBGYIRoUumNgPpvis8mMCITJ1ZqlmHeKAKKZPAtsuka7T7Ka56wE+Mme02gDiNlHKHH1OqwVGZiBkyxxL8wLaqz1vgQ8uuYPJS16vHYwx8sQomdosEuGfVEfnp5iON+Kpv95oJT++yQ0UwI1nSBSO+jS6Enz5bxUjm4pf1qPgm20PEzvnYb5pFrU1QS+XtgQvOfmseICtuj7dPx0dQASlgAqfewlBwuvAT9I7OwphK6MMD3+GdSIxMa5bE+oaor+Mq1VKPO6VwxI67qM86a2z+LaymRPa3GIHeGmDqF15vnBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/YvLv3yYS9iQ9V2rnwbTVLmpE6aGtqi7Rqnt6Mf4mvc=;
 b=Q953+tgfJ+d83rlHRYvJ4R/J0ewARbjhzX4neXQeLOxrbJ/rLd9Y5+s3gLLj7ewAZIMs+cZJ2LbCOLhbjlVTk0Q3MtYXErD8/D6Fw6xm6OjGhJyDNVphBVIeqLD/IYDxVDIad88p5luNJntZBRd1z5HT/wgW4ALVSgy+VgkJXsw=
Received: from DM5PR12MB1449.namprd12.prod.outlook.com (10.172.40.14) by
 DM5PR12MB1628.namprd12.prod.outlook.com (10.172.35.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Fri, 18 Oct 2019 14:15:33 +0000
Received: from DM5PR12MB1449.namprd12.prod.outlook.com
 ([fe80::e0d2:a3e2:bf3d:a28f]) by DM5PR12MB1449.namprd12.prod.outlook.com
 ([fe80::e0d2:a3e2:bf3d:a28f%6]) with mapi id 15.20.2347.024; Fri, 18 Oct 2019
 14:15:33 +0000
From: "Hook, Gary" <Gary.Hook@amd.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, "linux-crypto@vger.kernel.org"
 <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH 04/25] crypto: ccp - switch from ablkcipher to skcipher
Thread-Topic: [PATCH 04/25] crypto: ccp - switch from ablkcipher to skcipher
Thread-Index: AQHVgomrr5/aiIMxXEi9x1JPCAvixKdgd+yA
Date: Fri, 18 Oct 2019 14:15:33 +0000
Message-ID: <eba53bde-f7ae-cb77-a7c0-98d4e58d6d44@amd.com>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-5-ard.biesheuvel@linaro.org>
In-Reply-To: <20191014121910.7264-5-ard.biesheuvel@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR02CA0031.namprd02.prod.outlook.com
 (2603:10b6:805:a2::44) To DM5PR12MB1449.namprd12.prod.outlook.com
 (2603:10b6:4:10::14)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Gary.Hook@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.78.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2437ce90-713b-403c-043e-08d753d5a339
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DM5PR12MB1628:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR12MB1628C31ED7824470106BEAFAFD6C0@DM5PR12MB1628.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:156;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(39860400002)(376002)(396003)(189003)(199004)(66556008)(26005)(71190400001)(66946007)(14454004)(11346002)(446003)(476003)(71200400001)(478600001)(2906002)(25786009)(186003)(2616005)(102836004)(36756003)(2501003)(66476007)(66446008)(316002)(64756008)(6486002)(4326008)(8936002)(8676002)(229853002)(486006)(6246003)(386003)(6506007)(54906003)(53546011)(305945005)(86362001)(81166006)(7736002)(31696002)(3846002)(76176011)(99286004)(6436002)(66066001)(52116002)(5660300002)(14444005)(110136005)(6116002)(30864003)(31686004)(256004)(81156014)(6512007)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1628;
 H:DM5PR12MB1449.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ab+5nNmagV3OAL3cYKVh6GWF92PK4wUrS1MoWVKuh1Z9aqGq6UZJRVC4zG6fHdCRyxzqbVepUxgbuPvbWpSyd2CFY8KUSGrXXGQU7ncvip2jowwitCWm9gwlgf3RWMjta0/HSqdva7MPsoqcsx2XXXFjCLcCZHaxrJfW/8vvhOGqxnzwi3l76Gb+Z6uagYapNBArbsW5WlDsqItD9e2Y4C3ur1DLV+VPIMUDoOOEjfEzaOPtwd6X+rb32qWo7Yd2IxHQ2LPpGyGkQ6KsJpyPQLAgC2h5DePoRm46zdoei5dRer3ZYS/c/zilyaVcmBAQu4CKa5UPQlqjvtCuSNOp7BfEBYB21Jvy0yINt1a4zorF+DH+0skBNjf+/O/+mUJzRGj+T0X9cyq9eRnyUUfqFTEVE0ibKK53M+QqK4yTeF0=
Content-ID: <5858D48AA532CF4D9FE9962A88B43380@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2437ce90-713b-403c-043e-08d753d5a339
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 14:15:33.0315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dVAkMoLWOQBRvO/DGu0uZnB/BTUzHHP7ke4rsYCef5THn/J7HOyq1RGKCjmY3U6W
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1628
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_071537_034502_E38C42DB 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.41 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>,
 Eric Biggers <ebiggers@google.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/14/19 7:18 AM, Ard Biesheuvel wrote:
> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
> 
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.
> 
> Cc: Tom Lendacky <thomas.lendacky@amd.com>
> Cc: Gary Hook <gary.hook@amd.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Reviewed-by: Gary R Hook <gary.hook@amd.com>
Tested-by: Gary R Hook <gary.hook@amd.com>

> ---
>   drivers/crypto/ccp/ccp-crypto-aes-galois.c |   7 +-
>   drivers/crypto/ccp/ccp-crypto-aes-xts.c    |  94 +++++------
>   drivers/crypto/ccp/ccp-crypto-aes.c        | 169 +++++++++-----------
>   drivers/crypto/ccp/ccp-crypto-des3.c       | 100 ++++++------
>   drivers/crypto/ccp/ccp-crypto-main.c       |  14 +-
>   drivers/crypto/ccp/ccp-crypto.h            |  13 +-
>   6 files changed, 186 insertions(+), 211 deletions(-)
> 
> diff --git a/drivers/crypto/ccp/ccp-crypto-aes-galois.c b/drivers/crypto/ccp/ccp-crypto-aes-galois.c
> index 94c1ad7eeddf..ff50ee80d223 100644
> --- a/drivers/crypto/ccp/ccp-crypto-aes-galois.c
> +++ b/drivers/crypto/ccp/ccp-crypto-aes-galois.c
> @@ -172,14 +172,12 @@ static struct aead_alg ccp_aes_gcm_defaults = {
>   	.ivsize = GCM_AES_IV_SIZE,
>   	.maxauthsize = AES_BLOCK_SIZE,
>   	.base = {
> -		.cra_flags	= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -				  CRYPTO_ALG_ASYNC |
> +		.cra_flags	= CRYPTO_ALG_ASYNC |
>   				  CRYPTO_ALG_KERN_DRIVER_ONLY |
>   				  CRYPTO_ALG_NEED_FALLBACK,
>   		.cra_blocksize	= AES_BLOCK_SIZE,
>   		.cra_ctxsize	= sizeof(struct ccp_ctx),
>   		.cra_priority	= CCP_CRA_PRIORITY,
> -		.cra_type	= &crypto_ablkcipher_type,
>   		.cra_exit	= ccp_aes_gcm_cra_exit,
>   		.cra_module	= THIS_MODULE,
>   	},
> @@ -229,11 +227,10 @@ static int ccp_register_aes_aead(struct list_head *head,
>   	snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
>   		 def->driver_name);
>   	alg->base.cra_blocksize = def->blocksize;
> -	alg->base.cra_ablkcipher.ivsize = def->ivsize;
>   
>   	ret = crypto_register_aead(alg);
>   	if (ret) {
> -		pr_err("%s ablkcipher algorithm registration error (%d)\n",
> +		pr_err("%s aead algorithm registration error (%d)\n",
>   		       alg->base.cra_name, ret);
>   		kfree(ccp_aead);
>   		return ret;
> diff --git a/drivers/crypto/ccp/ccp-crypto-aes-xts.c b/drivers/crypto/ccp/ccp-crypto-aes-xts.c
> index 8e4a531f4f70..04b2517df955 100644
> --- a/drivers/crypto/ccp/ccp-crypto-aes-xts.c
> +++ b/drivers/crypto/ccp/ccp-crypto-aes-xts.c
> @@ -24,7 +24,7 @@ struct ccp_aes_xts_def {
>   	const char *drv_name;
>   };
>   
> -static struct ccp_aes_xts_def aes_xts_algs[] = {
> +static const struct ccp_aes_xts_def aes_xts_algs[] = {
>   	{
>   		.name		= "xts(aes)",
>   		.drv_name	= "xts-aes-ccp",
> @@ -61,26 +61,25 @@ static struct ccp_unit_size_map xts_unit_sizes[] = {
>   
>   static int ccp_aes_xts_complete(struct crypto_async_request *async_req, int ret)
>   {
> -	struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
> -	struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct skcipher_request *req = skcipher_request_cast(async_req);
> +	struct ccp_aes_req_ctx *rctx = skcipher_request_ctx(req);
>   
>   	if (ret)
>   		return ret;
>   
> -	memcpy(req->info, rctx->iv, AES_BLOCK_SIZE);
> +	memcpy(req->iv, rctx->iv, AES_BLOCK_SIZE);
>   
>   	return 0;
>   }
>   
> -static int ccp_aes_xts_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
> +static int ccp_aes_xts_setkey(struct crypto_skcipher *tfm, const u8 *key,
>   			      unsigned int key_len)
>   {
> -	struct crypto_tfm *xfm = crypto_ablkcipher_tfm(tfm);
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(xfm);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
>   	unsigned int ccpversion = ccp_version();
>   	int ret;
>   
> -	ret = xts_check_key(xfm, key, key_len);
> +	ret = xts_verify_key(tfm, key, key_len);
>   	if (ret)
>   		return ret;
>   
> @@ -102,11 +101,12 @@ static int ccp_aes_xts_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
>   	return crypto_sync_skcipher_setkey(ctx->u.aes.tfm_skcipher, key, key_len);
>   }
>   
> -static int ccp_aes_xts_crypt(struct ablkcipher_request *req,
> +static int ccp_aes_xts_crypt(struct skcipher_request *req,
>   			     unsigned int encrypt)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
> -	struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
> +	struct ccp_aes_req_ctx *rctx = skcipher_request_ctx(req);
>   	unsigned int ccpversion = ccp_version();
>   	unsigned int fallback = 0;
>   	unsigned int unit;
> @@ -116,7 +116,7 @@ static int ccp_aes_xts_crypt(struct ablkcipher_request *req,
>   	if (!ctx->u.aes.key_len)
>   		return -EINVAL;
>   
> -	if (!req->info)
> +	if (!req->iv)
>   		return -EINVAL;
>   
>   	/* Check conditions under which the CCP can fulfill a request. The
> @@ -127,7 +127,7 @@ static int ccp_aes_xts_crypt(struct ablkcipher_request *req,
>   	 */
>   	unit_size = CCP_XTS_AES_UNIT_SIZE__LAST;
>   	for (unit = 0; unit < ARRAY_SIZE(xts_unit_sizes); unit++) {
> -		if (req->nbytes == xts_unit_sizes[unit].size) {
> +		if (req->cryptlen == xts_unit_sizes[unit].size) {
>   			unit_size = unit;
>   			break;
>   		}
> @@ -155,14 +155,14 @@ static int ccp_aes_xts_crypt(struct ablkcipher_request *req,
>   		skcipher_request_set_callback(subreq, req->base.flags,
>   					      NULL, NULL);
>   		skcipher_request_set_crypt(subreq, req->src, req->dst,
> -					   req->nbytes, req->info);
> +					   req->cryptlen, req->iv);
>   		ret = encrypt ? crypto_skcipher_encrypt(subreq) :
>   				crypto_skcipher_decrypt(subreq);
>   		skcipher_request_zero(subreq);
>   		return ret;
>   	}
>   
> -	memcpy(rctx->iv, req->info, AES_BLOCK_SIZE);
> +	memcpy(rctx->iv, req->iv, AES_BLOCK_SIZE);
>   	sg_init_one(&rctx->iv_sg, rctx->iv, AES_BLOCK_SIZE);
>   
>   	memset(&rctx->cmd, 0, sizeof(rctx->cmd));
> @@ -177,7 +177,7 @@ static int ccp_aes_xts_crypt(struct ablkcipher_request *req,
>   	rctx->cmd.u.xts.iv = &rctx->iv_sg;
>   	rctx->cmd.u.xts.iv_len = AES_BLOCK_SIZE;
>   	rctx->cmd.u.xts.src = req->src;
> -	rctx->cmd.u.xts.src_len = req->nbytes;
> +	rctx->cmd.u.xts.src_len = req->cryptlen;
>   	rctx->cmd.u.xts.dst = req->dst;
>   
>   	ret = ccp_crypto_enqueue_request(&req->base, &rctx->cmd);
> @@ -185,19 +185,19 @@ static int ccp_aes_xts_crypt(struct ablkcipher_request *req,
>   	return ret;
>   }
>   
> -static int ccp_aes_xts_encrypt(struct ablkcipher_request *req)
> +static int ccp_aes_xts_encrypt(struct skcipher_request *req)
>   {
>   	return ccp_aes_xts_crypt(req, 1);
>   }
>   
> -static int ccp_aes_xts_decrypt(struct ablkcipher_request *req)
> +static int ccp_aes_xts_decrypt(struct skcipher_request *req)
>   {
>   	return ccp_aes_xts_crypt(req, 0);
>   }
>   
> -static int ccp_aes_xts_cra_init(struct crypto_tfm *tfm)
> +static int ccp_aes_xts_init_tfm(struct crypto_skcipher *tfm)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(tfm);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
>   	struct crypto_sync_skcipher *fallback_tfm;
>   
>   	ctx->complete = ccp_aes_xts_complete;
> @@ -212,14 +212,14 @@ static int ccp_aes_xts_cra_init(struct crypto_tfm *tfm)
>   	}
>   	ctx->u.aes.tfm_skcipher = fallback_tfm;
>   
> -	tfm->crt_ablkcipher.reqsize = sizeof(struct ccp_aes_req_ctx);
> +	crypto_skcipher_set_reqsize(tfm, sizeof(struct ccp_aes_req_ctx));
>   
>   	return 0;
>   }
>   
> -static void ccp_aes_xts_cra_exit(struct crypto_tfm *tfm)
> +static void ccp_aes_xts_exit_tfm(struct crypto_skcipher *tfm)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(tfm);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
>   
>   	crypto_free_sync_skcipher(ctx->u.aes.tfm_skcipher);
>   }
> @@ -227,8 +227,8 @@ static void ccp_aes_xts_cra_exit(struct crypto_tfm *tfm)
>   static int ccp_register_aes_xts_alg(struct list_head *head,
>   				    const struct ccp_aes_xts_def *def)
>   {
> -	struct ccp_crypto_ablkcipher_alg *ccp_alg;
> -	struct crypto_alg *alg;
> +	struct ccp_crypto_skcipher_alg *ccp_alg;
> +	struct skcipher_alg *alg;
>   	int ret;
>   
>   	ccp_alg = kzalloc(sizeof(*ccp_alg), GFP_KERNEL);
> @@ -239,30 +239,30 @@ static int ccp_register_aes_xts_alg(struct list_head *head,
>   
>   	alg = &ccp_alg->alg;
>   
> -	snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
> -	snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
> +	snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
> +	snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
>   		 def->drv_name);
> -	alg->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC |
> -			 CRYPTO_ALG_KERN_DRIVER_ONLY |
> -			 CRYPTO_ALG_NEED_FALLBACK;
> -	alg->cra_blocksize = AES_BLOCK_SIZE;
> -	alg->cra_ctxsize = sizeof(struct ccp_ctx);
> -	alg->cra_priority = CCP_CRA_PRIORITY;
> -	alg->cra_type = &crypto_ablkcipher_type;
> -	alg->cra_ablkcipher.setkey = ccp_aes_xts_setkey;
> -	alg->cra_ablkcipher.encrypt = ccp_aes_xts_encrypt;
> -	alg->cra_ablkcipher.decrypt = ccp_aes_xts_decrypt;
> -	alg->cra_ablkcipher.min_keysize = AES_MIN_KEY_SIZE * 2;
> -	alg->cra_ablkcipher.max_keysize = AES_MAX_KEY_SIZE * 2;
> -	alg->cra_ablkcipher.ivsize = AES_BLOCK_SIZE;
> -	alg->cra_init = ccp_aes_xts_cra_init;
> -	alg->cra_exit = ccp_aes_xts_cra_exit;
> -	alg->cra_module = THIS_MODULE;
> -
> -	ret = crypto_register_alg(alg);
> +	alg->base.cra_flags	= CRYPTO_ALG_ASYNC |
> +				  CRYPTO_ALG_KERN_DRIVER_ONLY |
> +				  CRYPTO_ALG_NEED_FALLBACK;
> +	alg->base.cra_blocksize	= AES_BLOCK_SIZE;
> +	alg->base.cra_ctxsize	= sizeof(struct ccp_ctx);
> +	alg->base.cra_priority	= CCP_CRA_PRIORITY;
> +	alg->base.cra_module	= THIS_MODULE;
> +
> +	alg->setkey		= ccp_aes_xts_setkey;
> +	alg->encrypt		= ccp_aes_xts_encrypt;
> +	alg->decrypt		= ccp_aes_xts_decrypt;
> +	alg->min_keysize	= AES_MIN_KEY_SIZE * 2;
> +	alg->max_keysize	= AES_MAX_KEY_SIZE * 2;
> +	alg->ivsize		= AES_BLOCK_SIZE;
> +	alg->init		= ccp_aes_xts_init_tfm;
> +	alg->exit		= ccp_aes_xts_exit_tfm;
> +
> +	ret = crypto_register_skcipher(alg);
>   	if (ret) {
> -		pr_err("%s ablkcipher algorithm registration error (%d)\n",
> -		       alg->cra_name, ret);
> +		pr_err("%s skcipher algorithm registration error (%d)\n",
> +		       alg->base.cra_name, ret);
>   		kfree(ccp_alg);
>   		return ret;
>   	}
> diff --git a/drivers/crypto/ccp/ccp-crypto-aes.c b/drivers/crypto/ccp/ccp-crypto-aes.c
> index 58c6dddfc5e1..33328a153225 100644
> --- a/drivers/crypto/ccp/ccp-crypto-aes.c
> +++ b/drivers/crypto/ccp/ccp-crypto-aes.c
> @@ -21,25 +21,24 @@
>   
>   static int ccp_aes_complete(struct crypto_async_request *async_req, int ret)
>   {
> -	struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
> +	struct skcipher_request *req = skcipher_request_cast(async_req);
>   	struct ccp_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
> -	struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct ccp_aes_req_ctx *rctx = skcipher_request_ctx(req);
>   
>   	if (ret)
>   		return ret;
>   
>   	if (ctx->u.aes.mode != CCP_AES_MODE_ECB)
> -		memcpy(req->info, rctx->iv, AES_BLOCK_SIZE);
> +		memcpy(req->iv, rctx->iv, AES_BLOCK_SIZE);
>   
>   	return 0;
>   }
>   
> -static int ccp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
> +static int ccp_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
>   			  unsigned int key_len)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(crypto_ablkcipher_tfm(tfm));
> -	struct ccp_crypto_ablkcipher_alg *alg =
> -		ccp_crypto_ablkcipher_alg(crypto_ablkcipher_tfm(tfm));
> +	struct ccp_crypto_skcipher_alg *alg = ccp_crypto_skcipher_alg(tfm);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
>   
>   	switch (key_len) {
>   	case AES_KEYSIZE_128:
> @@ -52,7 +51,7 @@ static int ccp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
>   		ctx->u.aes.type = CCP_AES_TYPE_256;
>   		break;
>   	default:
> -		crypto_ablkcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
> +		crypto_skcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
>   		return -EINVAL;
>   	}
>   	ctx->u.aes.mode = alg->mode;
> @@ -64,10 +63,11 @@ static int ccp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
>   	return 0;
>   }
>   
> -static int ccp_aes_crypt(struct ablkcipher_request *req, bool encrypt)
> +static int ccp_aes_crypt(struct skcipher_request *req, bool encrypt)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
> -	struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
> +	struct ccp_aes_req_ctx *rctx = skcipher_request_ctx(req);
>   	struct scatterlist *iv_sg = NULL;
>   	unsigned int iv_len = 0;
>   	int ret;
> @@ -77,14 +77,14 @@ static int ccp_aes_crypt(struct ablkcipher_request *req, bool encrypt)
>   
>   	if (((ctx->u.aes.mode == CCP_AES_MODE_ECB) ||
>   	     (ctx->u.aes.mode == CCP_AES_MODE_CBC)) &&
> -	    (req->nbytes & (AES_BLOCK_SIZE - 1)))
> +	    (req->cryptlen & (AES_BLOCK_SIZE - 1)))
>   		return -EINVAL;
>   
>   	if (ctx->u.aes.mode != CCP_AES_MODE_ECB) {
> -		if (!req->info)
> +		if (!req->iv)
>   			return -EINVAL;
>   
> -		memcpy(rctx->iv, req->info, AES_BLOCK_SIZE);
> +		memcpy(rctx->iv, req->iv, AES_BLOCK_SIZE);
>   		iv_sg = &rctx->iv_sg;
>   		iv_len = AES_BLOCK_SIZE;
>   		sg_init_one(iv_sg, rctx->iv, iv_len);
> @@ -102,7 +102,7 @@ static int ccp_aes_crypt(struct ablkcipher_request *req, bool encrypt)
>   	rctx->cmd.u.aes.iv = iv_sg;
>   	rctx->cmd.u.aes.iv_len = iv_len;
>   	rctx->cmd.u.aes.src = req->src;
> -	rctx->cmd.u.aes.src_len = req->nbytes;
> +	rctx->cmd.u.aes.src_len = req->cryptlen;
>   	rctx->cmd.u.aes.dst = req->dst;
>   
>   	ret = ccp_crypto_enqueue_request(&req->base, &rctx->cmd);
> @@ -110,48 +110,44 @@ static int ccp_aes_crypt(struct ablkcipher_request *req, bool encrypt)
>   	return ret;
>   }
>   
> -static int ccp_aes_encrypt(struct ablkcipher_request *req)
> +static int ccp_aes_encrypt(struct skcipher_request *req)
>   {
>   	return ccp_aes_crypt(req, true);
>   }
>   
> -static int ccp_aes_decrypt(struct ablkcipher_request *req)
> +static int ccp_aes_decrypt(struct skcipher_request *req)
>   {
>   	return ccp_aes_crypt(req, false);
>   }
>   
> -static int ccp_aes_cra_init(struct crypto_tfm *tfm)
> +static int ccp_aes_init_tfm(struct crypto_skcipher *tfm)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(tfm);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
>   
>   	ctx->complete = ccp_aes_complete;
>   	ctx->u.aes.key_len = 0;
>   
> -	tfm->crt_ablkcipher.reqsize = sizeof(struct ccp_aes_req_ctx);
> +	crypto_skcipher_set_reqsize(tfm, sizeof(struct ccp_aes_req_ctx));
>   
>   	return 0;
>   }
>   
> -static void ccp_aes_cra_exit(struct crypto_tfm *tfm)
> -{
> -}
> -
>   static int ccp_aes_rfc3686_complete(struct crypto_async_request *async_req,
>   				    int ret)
>   {
> -	struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
> -	struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct skcipher_request *req = skcipher_request_cast(async_req);
> +	struct ccp_aes_req_ctx *rctx = skcipher_request_ctx(req);
>   
>   	/* Restore the original pointer */
> -	req->info = rctx->rfc3686_info;
> +	req->iv = rctx->rfc3686_info;
>   
>   	return ccp_aes_complete(async_req, ret);
>   }
>   
> -static int ccp_aes_rfc3686_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
> +static int ccp_aes_rfc3686_setkey(struct crypto_skcipher *tfm, const u8 *key,
>   				  unsigned int key_len)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(crypto_ablkcipher_tfm(tfm));
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
>   
>   	if (key_len < CTR_RFC3686_NONCE_SIZE)
>   		return -EINVAL;
> @@ -162,10 +158,11 @@ static int ccp_aes_rfc3686_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
>   	return ccp_aes_setkey(tfm, key, key_len);
>   }
>   
> -static int ccp_aes_rfc3686_crypt(struct ablkcipher_request *req, bool encrypt)
> +static int ccp_aes_rfc3686_crypt(struct skcipher_request *req, bool encrypt)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
> -	struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
> +	struct ccp_aes_req_ctx *rctx = skcipher_request_ctx(req);
>   	u8 *iv;
>   
>   	/* Initialize the CTR block */
> @@ -173,84 +170,72 @@ static int ccp_aes_rfc3686_crypt(struct ablkcipher_request *req, bool encrypt)
>   	memcpy(iv, ctx->u.aes.nonce, CTR_RFC3686_NONCE_SIZE);
>   
>   	iv += CTR_RFC3686_NONCE_SIZE;
> -	memcpy(iv, req->info, CTR_RFC3686_IV_SIZE);
> +	memcpy(iv, req->iv, CTR_RFC3686_IV_SIZE);
>   
>   	iv += CTR_RFC3686_IV_SIZE;
>   	*(__be32 *)iv = cpu_to_be32(1);
>   
>   	/* Point to the new IV */
> -	rctx->rfc3686_info = req->info;
> -	req->info = rctx->rfc3686_iv;
> +	rctx->rfc3686_info = req->iv;
> +	req->iv = rctx->rfc3686_iv;
>   
>   	return ccp_aes_crypt(req, encrypt);
>   }
>   
> -static int ccp_aes_rfc3686_encrypt(struct ablkcipher_request *req)
> +static int ccp_aes_rfc3686_encrypt(struct skcipher_request *req)
>   {
>   	return ccp_aes_rfc3686_crypt(req, true);
>   }
>   
> -static int ccp_aes_rfc3686_decrypt(struct ablkcipher_request *req)
> +static int ccp_aes_rfc3686_decrypt(struct skcipher_request *req)
>   {
>   	return ccp_aes_rfc3686_crypt(req, false);
>   }
>   
> -static int ccp_aes_rfc3686_cra_init(struct crypto_tfm *tfm)
> +static int ccp_aes_rfc3686_init_tfm(struct crypto_skcipher *tfm)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(tfm);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
>   
>   	ctx->complete = ccp_aes_rfc3686_complete;
>   	ctx->u.aes.key_len = 0;
>   
> -	tfm->crt_ablkcipher.reqsize = sizeof(struct ccp_aes_req_ctx);
> +	crypto_skcipher_set_reqsize(tfm, sizeof(struct ccp_aes_req_ctx));
>   
>   	return 0;
>   }
>   
> -static void ccp_aes_rfc3686_cra_exit(struct crypto_tfm *tfm)
> -{
> -}
> -
> -static struct crypto_alg ccp_aes_defaults = {
> -	.cra_flags	= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -			  CRYPTO_ALG_ASYNC |
> -			  CRYPTO_ALG_KERN_DRIVER_ONLY |
> -			  CRYPTO_ALG_NEED_FALLBACK,
> -	.cra_blocksize	= AES_BLOCK_SIZE,
> -	.cra_ctxsize	= sizeof(struct ccp_ctx),
> -	.cra_priority	= CCP_CRA_PRIORITY,
> -	.cra_type	= &crypto_ablkcipher_type,
> -	.cra_init	= ccp_aes_cra_init,
> -	.cra_exit	= ccp_aes_cra_exit,
> -	.cra_module	= THIS_MODULE,
> -	.cra_ablkcipher	= {
> -		.setkey		= ccp_aes_setkey,
> -		.encrypt	= ccp_aes_encrypt,
> -		.decrypt	= ccp_aes_decrypt,
> -		.min_keysize	= AES_MIN_KEY_SIZE,
> -		.max_keysize	= AES_MAX_KEY_SIZE,
> -	},
> +static const struct skcipher_alg ccp_aes_defaults = {
> +	.setkey			= ccp_aes_setkey,
> +	.encrypt		= ccp_aes_encrypt,
> +	.decrypt		= ccp_aes_decrypt,
> +	.min_keysize		= AES_MIN_KEY_SIZE,
> +	.max_keysize		= AES_MAX_KEY_SIZE,
> +	.init			= ccp_aes_init_tfm,
> +
> +	.base.cra_flags		= CRYPTO_ALG_ASYNC |
> +				  CRYPTO_ALG_KERN_DRIVER_ONLY |
> +				  CRYPTO_ALG_NEED_FALLBACK,
> +	.base.cra_blocksize	= AES_BLOCK_SIZE,
> +	.base.cra_ctxsize	= sizeof(struct ccp_ctx),
> +	.base.cra_priority	= CCP_CRA_PRIORITY,
> +	.base.cra_module	= THIS_MODULE,
>   };
>   
> -static struct crypto_alg ccp_aes_rfc3686_defaults = {
> -	.cra_flags	= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -			   CRYPTO_ALG_ASYNC |
> -			   CRYPTO_ALG_KERN_DRIVER_ONLY |
> -			   CRYPTO_ALG_NEED_FALLBACK,
> -	.cra_blocksize	= CTR_RFC3686_BLOCK_SIZE,
> -	.cra_ctxsize	= sizeof(struct ccp_ctx),
> -	.cra_priority	= CCP_CRA_PRIORITY,
> -	.cra_type	= &crypto_ablkcipher_type,
> -	.cra_init	= ccp_aes_rfc3686_cra_init,
> -	.cra_exit	= ccp_aes_rfc3686_cra_exit,
> -	.cra_module	= THIS_MODULE,
> -	.cra_ablkcipher	= {
> -		.setkey		= ccp_aes_rfc3686_setkey,
> -		.encrypt	= ccp_aes_rfc3686_encrypt,
> -		.decrypt	= ccp_aes_rfc3686_decrypt,
> -		.min_keysize	= AES_MIN_KEY_SIZE + CTR_RFC3686_NONCE_SIZE,
> -		.max_keysize	= AES_MAX_KEY_SIZE + CTR_RFC3686_NONCE_SIZE,
> -	},
> +static const struct skcipher_alg ccp_aes_rfc3686_defaults = {
> +	.setkey			= ccp_aes_rfc3686_setkey,
> +	.encrypt		= ccp_aes_rfc3686_encrypt,
> +	.decrypt		= ccp_aes_rfc3686_decrypt,
> +	.min_keysize		= AES_MIN_KEY_SIZE + CTR_RFC3686_NONCE_SIZE,
> +	.max_keysize		= AES_MAX_KEY_SIZE + CTR_RFC3686_NONCE_SIZE,
> +	.init			= ccp_aes_rfc3686_init_tfm,
> +
> +	.base.cra_flags		= CRYPTO_ALG_ASYNC |
> +				  CRYPTO_ALG_KERN_DRIVER_ONLY |
> +				  CRYPTO_ALG_NEED_FALLBACK,
> +	.base.cra_blocksize	= CTR_RFC3686_BLOCK_SIZE,
> +	.base.cra_ctxsize	= sizeof(struct ccp_ctx),
> +	.base.cra_priority	= CCP_CRA_PRIORITY,
> +	.base.cra_module	= THIS_MODULE,
>   };
>   
>   struct ccp_aes_def {
> @@ -260,7 +245,7 @@ struct ccp_aes_def {
>   	const char *driver_name;
>   	unsigned int blocksize;
>   	unsigned int ivsize;
> -	struct crypto_alg *alg_defaults;
> +	const struct skcipher_alg *alg_defaults;
>   };
>   
>   static struct ccp_aes_def aes_algs[] = {
> @@ -323,8 +308,8 @@ static struct ccp_aes_def aes_algs[] = {
>   static int ccp_register_aes_alg(struct list_head *head,
>   				const struct ccp_aes_def *def)
>   {
> -	struct ccp_crypto_ablkcipher_alg *ccp_alg;
> -	struct crypto_alg *alg;
> +	struct ccp_crypto_skcipher_alg *ccp_alg;
> +	struct skcipher_alg *alg;
>   	int ret;
>   
>   	ccp_alg = kzalloc(sizeof(*ccp_alg), GFP_KERNEL);
> @@ -338,16 +323,16 @@ static int ccp_register_aes_alg(struct list_head *head,
>   	/* Copy the defaults and override as necessary */
>   	alg = &ccp_alg->alg;
>   	*alg = *def->alg_defaults;
> -	snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
> -	snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
> +	snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
> +	snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
>   		 def->driver_name);
> -	alg->cra_blocksize = def->blocksize;
> -	alg->cra_ablkcipher.ivsize = def->ivsize;
> +	alg->base.cra_blocksize = def->blocksize;
> +	alg->ivsize = def->ivsize;
>   
> -	ret = crypto_register_alg(alg);
> +	ret = crypto_register_skcipher(alg);
>   	if (ret) {
> -		pr_err("%s ablkcipher algorithm registration error (%d)\n",
> -		       alg->cra_name, ret);
> +		pr_err("%s skcipher algorithm registration error (%d)\n",
> +		       alg->base.cra_name, ret);
>   		kfree(ccp_alg);
>   		return ret;
>   	}
> diff --git a/drivers/crypto/ccp/ccp-crypto-des3.c b/drivers/crypto/ccp/ccp-crypto-des3.c
> index d2c49b2f0323..9c129defdb50 100644
> --- a/drivers/crypto/ccp/ccp-crypto-des3.c
> +++ b/drivers/crypto/ccp/ccp-crypto-des3.c
> @@ -20,28 +20,27 @@
>   
>   static int ccp_des3_complete(struct crypto_async_request *async_req, int ret)
>   {
> -	struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
> +	struct skcipher_request *req = skcipher_request_cast(async_req);
>   	struct ccp_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
> -	struct ccp_des3_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct ccp_des3_req_ctx *rctx = skcipher_request_ctx(req);
>   
>   	if (ret)
>   		return ret;
>   
>   	if (ctx->u.des3.mode != CCP_DES3_MODE_ECB)
> -		memcpy(req->info, rctx->iv, DES3_EDE_BLOCK_SIZE);
> +		memcpy(req->iv, rctx->iv, DES3_EDE_BLOCK_SIZE);
>   
>   	return 0;
>   }
>   
> -static int ccp_des3_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
> +static int ccp_des3_setkey(struct crypto_skcipher *tfm, const u8 *key,
>   		unsigned int key_len)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(crypto_ablkcipher_tfm(tfm));
> -	struct ccp_crypto_ablkcipher_alg *alg =
> -		ccp_crypto_ablkcipher_alg(crypto_ablkcipher_tfm(tfm));
> +	struct ccp_crypto_skcipher_alg *alg = ccp_crypto_skcipher_alg(tfm);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
>   	int err;
>   
> -	err = verify_ablkcipher_des3_key(tfm, key);
> +	err = verify_skcipher_des3_key(tfm, key);
>   	if (err)
>   		return err;
>   
> @@ -58,10 +57,11 @@ static int ccp_des3_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
>   	return 0;
>   }
>   
> -static int ccp_des3_crypt(struct ablkcipher_request *req, bool encrypt)
> +static int ccp_des3_crypt(struct skcipher_request *req, bool encrypt)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
> -	struct ccp_des3_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
> +	struct ccp_des3_req_ctx *rctx = skcipher_request_ctx(req);
>   	struct scatterlist *iv_sg = NULL;
>   	unsigned int iv_len = 0;
>   	int ret;
> @@ -71,14 +71,14 @@ static int ccp_des3_crypt(struct ablkcipher_request *req, bool encrypt)
>   
>   	if (((ctx->u.des3.mode == CCP_DES3_MODE_ECB) ||
>   	     (ctx->u.des3.mode == CCP_DES3_MODE_CBC)) &&
> -	    (req->nbytes & (DES3_EDE_BLOCK_SIZE - 1)))
> +	    (req->cryptlen & (DES3_EDE_BLOCK_SIZE - 1)))
>   		return -EINVAL;
>   
>   	if (ctx->u.des3.mode != CCP_DES3_MODE_ECB) {
> -		if (!req->info)
> +		if (!req->iv)
>   			return -EINVAL;
>   
> -		memcpy(rctx->iv, req->info, DES3_EDE_BLOCK_SIZE);
> +		memcpy(rctx->iv, req->iv, DES3_EDE_BLOCK_SIZE);
>   		iv_sg = &rctx->iv_sg;
>   		iv_len = DES3_EDE_BLOCK_SIZE;
>   		sg_init_one(iv_sg, rctx->iv, iv_len);
> @@ -97,7 +97,7 @@ static int ccp_des3_crypt(struct ablkcipher_request *req, bool encrypt)
>   	rctx->cmd.u.des3.iv = iv_sg;
>   	rctx->cmd.u.des3.iv_len = iv_len;
>   	rctx->cmd.u.des3.src = req->src;
> -	rctx->cmd.u.des3.src_len = req->nbytes;
> +	rctx->cmd.u.des3.src_len = req->cryptlen;
>   	rctx->cmd.u.des3.dst = req->dst;
>   
>   	ret = ccp_crypto_enqueue_request(&req->base, &rctx->cmd);
> @@ -105,51 +105,43 @@ static int ccp_des3_crypt(struct ablkcipher_request *req, bool encrypt)
>   	return ret;
>   }
>   
> -static int ccp_des3_encrypt(struct ablkcipher_request *req)
> +static int ccp_des3_encrypt(struct skcipher_request *req)
>   {
>   	return ccp_des3_crypt(req, true);
>   }
>   
> -static int ccp_des3_decrypt(struct ablkcipher_request *req)
> +static int ccp_des3_decrypt(struct skcipher_request *req)
>   {
>   	return ccp_des3_crypt(req, false);
>   }
>   
> -static int ccp_des3_cra_init(struct crypto_tfm *tfm)
> +static int ccp_des3_init_tfm(struct crypto_skcipher *tfm)
>   {
> -	struct ccp_ctx *ctx = crypto_tfm_ctx(tfm);
> +	struct ccp_ctx *ctx = crypto_skcipher_ctx(tfm);
>   
>   	ctx->complete = ccp_des3_complete;
>   	ctx->u.des3.key_len = 0;
>   
> -	tfm->crt_ablkcipher.reqsize = sizeof(struct ccp_des3_req_ctx);
> +	crypto_skcipher_set_reqsize(tfm, sizeof(struct ccp_des3_req_ctx));
>   
>   	return 0;
>   }
>   
> -static void ccp_des3_cra_exit(struct crypto_tfm *tfm)
> -{
> -}
> -
> -static struct crypto_alg ccp_des3_defaults = {
> -	.cra_flags	= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -		CRYPTO_ALG_ASYNC |
> -		CRYPTO_ALG_KERN_DRIVER_ONLY |
> -		CRYPTO_ALG_NEED_FALLBACK,
> -	.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
> -	.cra_ctxsize	= sizeof(struct ccp_ctx),
> -	.cra_priority	= CCP_CRA_PRIORITY,
> -	.cra_type	= &crypto_ablkcipher_type,
> -	.cra_init	= ccp_des3_cra_init,
> -	.cra_exit	= ccp_des3_cra_exit,
> -	.cra_module	= THIS_MODULE,
> -	.cra_ablkcipher	= {
> -		.setkey		= ccp_des3_setkey,
> -		.encrypt	= ccp_des3_encrypt,
> -		.decrypt	= ccp_des3_decrypt,
> -		.min_keysize	= DES3_EDE_KEY_SIZE,
> -		.max_keysize	= DES3_EDE_KEY_SIZE,
> -	},
> +static const struct skcipher_alg ccp_des3_defaults = {
> +	.setkey			= ccp_des3_setkey,
> +	.encrypt		= ccp_des3_encrypt,
> +	.decrypt		= ccp_des3_decrypt,
> +	.min_keysize		= DES3_EDE_KEY_SIZE,
> +	.max_keysize		= DES3_EDE_KEY_SIZE,
> +	.init			= ccp_des3_init_tfm,
> +
> +	.base.cra_flags		= CRYPTO_ALG_ASYNC |
> +				  CRYPTO_ALG_KERN_DRIVER_ONLY |
> +				  CRYPTO_ALG_NEED_FALLBACK,
> +	.base.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
> +	.base.cra_ctxsize	= sizeof(struct ccp_ctx),
> +	.base.cra_priority	= CCP_CRA_PRIORITY,
> +	.base.cra_module	= THIS_MODULE,
>   };
>   
>   struct ccp_des3_def {
> @@ -159,10 +151,10 @@ struct ccp_des3_def {
>   	const char *driver_name;
>   	unsigned int blocksize;
>   	unsigned int ivsize;
> -	struct crypto_alg *alg_defaults;
> +	const struct skcipher_alg *alg_defaults;
>   };
>   
> -static struct ccp_des3_def des3_algs[] = {
> +static const struct ccp_des3_def des3_algs[] = {
>   	{
>   		.mode		= CCP_DES3_MODE_ECB,
>   		.version	= CCP_VERSION(5, 0),
> @@ -186,8 +178,8 @@ static struct ccp_des3_def des3_algs[] = {
>   static int ccp_register_des3_alg(struct list_head *head,
>   				 const struct ccp_des3_def *def)
>   {
> -	struct ccp_crypto_ablkcipher_alg *ccp_alg;
> -	struct crypto_alg *alg;
> +	struct ccp_crypto_skcipher_alg *ccp_alg;
> +	struct skcipher_alg *alg;
>   	int ret;
>   
>   	ccp_alg = kzalloc(sizeof(*ccp_alg), GFP_KERNEL);
> @@ -201,16 +193,16 @@ static int ccp_register_des3_alg(struct list_head *head,
>   	/* Copy the defaults and override as necessary */
>   	alg = &ccp_alg->alg;
>   	*alg = *def->alg_defaults;
> -	snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
> -	snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
> +	snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
> +	snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
>   			def->driver_name);
> -	alg->cra_blocksize = def->blocksize;
> -	alg->cra_ablkcipher.ivsize = def->ivsize;
> +	alg->base.cra_blocksize = def->blocksize;
> +	alg->ivsize = def->ivsize;
>   
> -	ret = crypto_register_alg(alg);
> +	ret = crypto_register_skcipher(alg);
>   	if (ret) {
> -		pr_err("%s ablkcipher algorithm registration error (%d)\n",
> -				alg->cra_name, ret);
> +		pr_err("%s skcipher algorithm registration error (%d)\n",
> +				alg->base.cra_name, ret);
>   		kfree(ccp_alg);
>   		return ret;
>   	}
> diff --git a/drivers/crypto/ccp/ccp-crypto-main.c b/drivers/crypto/ccp/ccp-crypto-main.c
> index 8ee4cb45a3f3..88275b4867ea 100644
> --- a/drivers/crypto/ccp/ccp-crypto-main.c
> +++ b/drivers/crypto/ccp/ccp-crypto-main.c
> @@ -41,7 +41,7 @@ MODULE_PARM_DESC(rsa_disable, "Disable use of RSA - any non-zero value");
>   
>   /* List heads for the supported algorithms */
>   static LIST_HEAD(hash_algs);
> -static LIST_HEAD(cipher_algs);
> +static LIST_HEAD(skcipher_algs);
>   static LIST_HEAD(aead_algs);
>   static LIST_HEAD(akcipher_algs);
>   
> @@ -330,7 +330,7 @@ static int ccp_register_algs(void)
>   	int ret;
>   
>   	if (!aes_disable) {
> -		ret = ccp_register_aes_algs(&cipher_algs);
> +		ret = ccp_register_aes_algs(&skcipher_algs);
>   		if (ret)
>   			return ret;
>   
> @@ -338,7 +338,7 @@ static int ccp_register_algs(void)
>   		if (ret)
>   			return ret;
>   
> -		ret = ccp_register_aes_xts_algs(&cipher_algs);
> +		ret = ccp_register_aes_xts_algs(&skcipher_algs);
>   		if (ret)
>   			return ret;
>   
> @@ -348,7 +348,7 @@ static int ccp_register_algs(void)
>   	}
>   
>   	if (!des3_disable) {
> -		ret = ccp_register_des3_algs(&cipher_algs);
> +		ret = ccp_register_des3_algs(&skcipher_algs);
>   		if (ret)
>   			return ret;
>   	}
> @@ -371,7 +371,7 @@ static int ccp_register_algs(void)
>   static void ccp_unregister_algs(void)
>   {
>   	struct ccp_crypto_ahash_alg *ahash_alg, *ahash_tmp;
> -	struct ccp_crypto_ablkcipher_alg *ablk_alg, *ablk_tmp;
> +	struct ccp_crypto_skcipher_alg *ablk_alg, *ablk_tmp;
>   	struct ccp_crypto_aead *aead_alg, *aead_tmp;
>   	struct ccp_crypto_akcipher_alg *akc_alg, *akc_tmp;
>   
> @@ -381,8 +381,8 @@ static void ccp_unregister_algs(void)
>   		kfree(ahash_alg);
>   	}
>   
> -	list_for_each_entry_safe(ablk_alg, ablk_tmp, &cipher_algs, entry) {
> -		crypto_unregister_alg(&ablk_alg->alg);
> +	list_for_each_entry_safe(ablk_alg, ablk_tmp, &skcipher_algs, entry) {
> +		crypto_unregister_skcipher(&ablk_alg->alg);
>   		list_del(&ablk_alg->entry);
>   		kfree(ablk_alg);
>   	}
> diff --git a/drivers/crypto/ccp/ccp-crypto.h b/drivers/crypto/ccp/ccp-crypto.h
> index 9015b5da6ba3..90a009e6b5c1 100644
> --- a/drivers/crypto/ccp/ccp-crypto.h
> +++ b/drivers/crypto/ccp/ccp-crypto.h
> @@ -21,6 +21,7 @@
>   #include <crypto/hash.h>
>   #include <crypto/sha.h>
>   #include <crypto/akcipher.h>
> +#include <crypto/skcipher.h>
>   #include <crypto/internal/rsa.h>
>   
>   /* We want the module name in front of our messages */
> @@ -31,12 +32,12 @@
>   
>   #define CCP_CRA_PRIORITY	300
>   
> -struct ccp_crypto_ablkcipher_alg {
> +struct ccp_crypto_skcipher_alg {
>   	struct list_head entry;
>   
>   	u32 mode;
>   
> -	struct crypto_alg alg;
> +	struct skcipher_alg alg;
>   };
>   
>   struct ccp_crypto_aead {
> @@ -66,12 +67,12 @@ struct ccp_crypto_akcipher_alg {
>   	struct akcipher_alg alg;
>   };
>   
> -static inline struct ccp_crypto_ablkcipher_alg *
> -	ccp_crypto_ablkcipher_alg(struct crypto_tfm *tfm)
> +static inline struct ccp_crypto_skcipher_alg *
> +	ccp_crypto_skcipher_alg(struct crypto_skcipher *tfm)
>   {
> -	struct crypto_alg *alg = tfm->__crt_alg;
> +	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
>   
> -	return container_of(alg, struct ccp_crypto_ablkcipher_alg, alg);
> +	return container_of(alg, struct ccp_crypto_skcipher_alg, alg);
>   }
>   
>   static inline struct ccp_crypto_ahash_alg *
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
