Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6415617C2A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tbQq6JaKrR59RaaV5Wd+A8a4iCwEz/bu8RgjRnFmq4=; b=Y6M2dOtUtC32pw
	UrxNp/u0MkybO4VxZQGf0F5cexyyae+prkNsOrAYlQPiACFKM8SKxu+/rBuMuZGyAYXUdQ7uCcNA0
	E9+CsgTQ25kjqKrZCRwis3Wtn365/aOD8gWOod/l1zuYXwtIg/oovXElKkZBjDrIYGRt5+Ad28e13
	sjWfVm4TJGhU23Izm2KG50R+TCCbrPrjBivMZUVVu1FzuWOIB6V7Qzwlpnc75ioIWxZkrV/4bo3/0
	16DXpGCDe3k5G78KpckPrRSiCdyi+EM8GJ7KAh1dB03FltzNWm8Cndt5NkrVYFFs78z2rGOTGxfXD
	S1prh7zMUcIyu2/vhEDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFaR-0006RR-Km; Fri, 06 Mar 2020 16:12:31 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFaH-0006QW-OR
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:12:23 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 026FwRdY010762;
 Fri, 6 Mar 2020 16:12:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=a2clhmmmya55OinwgvvRajQ5WwlmesIYpOf+oPKPgQM=;
 b=FqzPkzNz52Gafw2/hwj9LD1WFKN/LywIRe5GZZThqIqeUx74TZ6SejHQ1W1F48OEMd+m
 j8RPR+9YHdBVF95jNvCFmYJkJUYI+BZtWE9lcH0c/npv5/eCByu/5UkMS+M9EfL2udXg
 pa74fajfUbfAQEyImcEamjtq/J2Dfax9AwuaBpsLv65v5/R1s9AQzpcs2CN5Hg5+dT/P
 tPvRSQEYruQnCIS96W3MJmj4VN4i+F0hmFlG/XIVF8mf3ny7JFrzdhISSa6kcgsPSimc
 rrC/oEBZ+xD+tyPSbCaokafhor3D/2VHxoPO/jF9pUcWh3+Pigz7d7B/whr4vaNtEbxs og== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2ykgys2rkq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 06 Mar 2020 16:12:12 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 026FvUOh156456;
 Fri, 6 Mar 2020 16:12:12 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2yg1pdp0wd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 06 Mar 2020 16:12:10 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 026GC54e032096;
 Fri, 6 Mar 2020 16:12:05 GMT
Received: from ca-dmjordan1.us.oracle.com (/10.211.9.48)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 06 Mar 2020 08:12:04 -0800
Date: Fri, 6 Mar 2020 11:12:22 -0500
From: Daniel Jordan <daniel.m.jordan@oracle.com>
To: Eric Biggers <ebiggers@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200306161222.wsx6nx26f7u7vabf@ca-dmjordan1.us.oracle.com>
References: <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
 <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
 <20200228123311.GE3275@willie-the-truck>
 <20200228153331.uimy62rat2tdxxod@ca-dmjordan1.us.oracle.com>
 <20200301175351.GA11684@Red>
 <20200302172510.fspofleipqjcdxak@ca-dmjordan1.us.oracle.com>
 <e7c92da2-42c0-a97d-7427-6fdc769b41b9@arm.com>
 <20200303213017.tanczhqd3nhpeeak@ca-dmjordan1.us.oracle.com>
 <20200303224327.GA89804@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303224327.GA89804@sol.localdomain>
User-Agent: NeoMutt/20180716
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9552
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 adultscore=0 bulkscore=0
 suspectscore=2 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003060110
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9552
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 lowpriorityscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 impostorscore=0 phishscore=0
 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003060110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_081221_841856_BDBB4FA6 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, Will Deacon <will@kernel.org>, jiangshanlai@gmail.com,
 linux-kernel@vger.kernel.org, Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-crypto@vger.kernel.org, tj@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 02:43:27PM -0800, Eric Biggers wrote:
> Probably the request_module() is coming from the registration-time crypto
> self-tests allocating the generic implementation of algorithm when an
> architecture-specific implementation is registered.  This occurs when
> CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y on Linux v5.2 and later.

Ok, I can confirm that if we get the debug output from one of Corentin's
boards.

> If this is causing problems we could do:
> 
> diff --git a/crypto/testmgr.c b/crypto/testmgr.c
> index ccb3d60729fc..d89791700b88 100644
> --- a/crypto/testmgr.c
> +++ b/crypto/testmgr.c
> @@ -1667,7 +1667,7 @@ static int test_hash_vs_generic_impl(const char *driver,
>  	if (strcmp(generic_driver, driver) == 0) /* Already the generic impl? */
>  		return 0;
>  
> -	generic_tfm = crypto_alloc_shash(generic_driver, 0, 0);
> +	generic_tfm = crypto_alloc_shash(generic_driver, 0, CRYPTO_NOLOAD);
>  	if (IS_ERR(generic_tfm)) {
>  		err = PTR_ERR(generic_tfm);
>  		if (err == -ENOENT) {
> @@ -2389,7 +2389,7 @@ static int test_aead_vs_generic_impl(struct aead_extra_tests_ctx *ctx)
>  	if (strcmp(generic_driver, driver) == 0) /* Already the generic impl? */
>  		return 0;
>  
> -	generic_tfm = crypto_alloc_aead(generic_driver, 0, 0);
> +	generic_tfm = crypto_alloc_aead(generic_driver, 0, CRYPTO_NOLOAD);
>  	if (IS_ERR(generic_tfm)) {
>  		err = PTR_ERR(generic_tfm);
>  		if (err == -ENOENT) {
> @@ -2993,7 +2993,7 @@ static int test_skcipher_vs_generic_impl(const char *driver,
>  	if (strcmp(generic_driver, driver) == 0) /* Already the generic impl? */
>  		return 0;
>  
> -	generic_tfm = crypto_alloc_skcipher(generic_driver, 0, 0);
> +	generic_tfm = crypto_alloc_skcipher(generic_driver, 0, CRYPTO_NOLOAD);
>  	if (IS_ERR(generic_tfm)) {
>  		err = PTR_ERR(generic_tfm);
>  		if (err == -ENOENT) {
> 
> 
> ... but that's not ideal, since it would mean that if someone builds all crypto
> algorithms as modules, then the comparison tests could be unnecessarily skipped.

We should try to avoid this then.

> But it is really always wrong to be calling request_module() from other
> module_init() functions?  The commit that added 'init_free_wq' was also
> introduced in v5.2; maybe that's the problem here?
> 
> 	commit 1a7b7d9220819afe79d1ec5d759fe4349bd2453e
> 	Author: Rick Edgecombe <rick.p.edgecombe@intel.com>
> 	Date:   Thu Apr 25 17:11:37 2019 -0700
> 
> 	    modules: Use vmalloc special flag

Yes, I don't see a reason init_free_wq has to be initialized that late.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
