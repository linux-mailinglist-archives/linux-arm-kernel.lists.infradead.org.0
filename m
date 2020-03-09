Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7859C17E55B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8V/FqwWnK3scoK96B7vQGFUUy93rTBnn6oewcJ0qBTc=; b=HklvtZargzOqUW
	q5WdqmaVyLcqUOUW+JwYNToT4s27uS2BsItesZE/zqP/uf8sEPIpJpVrt0gAgHKGFf8MxjpLAkmXh
	DE60wCpp6EpB9QoIZJdHm5386IRl3a0Tbegv0quudAvmNnkYbY2DEPkPtvlelddxog7ThkERtl7b1
	4+0N4rlf51n/aTYlHRYg5UYPQVM02V5nOZhHTVFM3CT5mGOihLPPo50XWA31pXu3fwT2auV/nSTG7
	0bntLfVwxeviFPqZ4oc+/PFo54+gfq55kLCoWLulYx0oKUwLUgrdtoZRAjaS95Fv0tf5GtItfQn7t
	bTsFa4EfCQr3kkCFYQrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLsp-0006qe-PJ; Mon, 09 Mar 2020 17:08:03 +0000
Received: from mail-bn8nam12on2107.outbound.protection.outlook.com
 ([40.107.237.107] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLsg-0006ps-5A
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:07:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTbyoSN1I1QxFSogODeFPRg1P/LMl0AwCkShrY9lTTVXAMZN5lIDs3Nnw+CFAg7P0tl2yazYngI6jBjsXSsQDsXTlDHM24rzmImxbxqsMqGEfzMqSEXoKP66IV+UtDNdEfFR9rkGvby7nw2WgnZNfpLppEDbHASwvNKnP6IV0XS6EuxmZNf9AZ7/sFtxaIQGVZqOGMANxOCcGzp9139crzrf22bn9A1sc6qij1b9JYdYeN0EHvxcumDXwBDVQOxyaBXJ3KNzJCr+wzwlGzdfrtlOObRbNdhgzhCWUqCrUYUx2zQfcWbhgHCmZSCvrStA0gOP27ICd6UgEM43537tKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/wAta9jpApZefoyPc5L81t5u2A5TXjZb0BAqZxeLNdc=;
 b=CNWSDoAyZo/nu8qL2lp4oO+l7v+gDyNfxSvqEbmXSsy227rWeeYRzzGGTE0VYA2tMX/C8fiiVl6FhjMUhJZYwxGFknezSfn6rKgGHqfv2iDGrhhwNbQ4Ad3pcrTYOwnqwhUtJktub3OvSVeNqlMFxCgCQSEwbr2bInMaf62/SoVXioghke32bMnaZQsljAb/EiekelCtzjOeXEZoUaAKJn2W4GUYYaXMnwKVZ6hArud6R0A9eZGO8pJW/PjWRaL5simQObYpjO55LsYEllIb94g3CiC/YQhQBc0OfHRUEriDgg7tl6kUWH0bQJcHLMhWJR6Zn/uphQpFke3upCto2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/wAta9jpApZefoyPc5L81t5u2A5TXjZb0BAqZxeLNdc=;
 b=gLDWDlAtM9WK0eihI899T07xTP6Ods2zVHBAH8ePBPTfW0JtG1siweeVEAsc761kRfymJEQ12O7lEty35ExZu6sYYkPUNfsNcMTfumuv0j6ViqT8tSn6KorDs3yiwlW7iS2oFJjj40X/Tqu09vq+kI2uiuI7c9miFw4tHAXCol4=
Received: from CY1PR01MB2137.prod.exchangelabs.com (2a01:111:e400:c637::8) by
 CY1PR01MB2074.prod.exchangelabs.com (2a01:111:e400:c613::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Mon, 9 Mar 2020 17:07:51 +0000
Received: from CY1PR01MB2137.prod.exchangelabs.com
 ([fe80::6148:f6cc:5af1:d331]) by CY1PR01MB2137.prod.exchangelabs.com
 ([fe80::6148:f6cc:5af1:d331%12]) with mapi id 15.20.2772.019; Mon, 9 Mar 2020
 17:07:50 +0000
From: Tyler Baicar OS <baicar@os.amperecomputing.com>
To: James Morse <james.morse@arm.com>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>, "linux-acpi@vger.kernel.org"
 <linux-acpi@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/3] ACPI / APEI: Kick the memory_failure() queue for
 synchronous errors
Thread-Topic: [PATCH 2/3] ACPI / APEI: Kick the memory_failure() queue for
 synchronous errors
Thread-Index: AQHV7l9islU0t33K/0yc+Wh9NLI+dqhAdbd9
Date: Mon, 9 Mar 2020 17:07:50 +0000
Message-ID: <CY1PR01MB2137B6CC34E2D31F7618A951E3FE0@CY1PR01MB2137.prod.exchangelabs.com>
References: <20200228174817.74278-1-james.morse@arm.com>,
 <20200228174817.74278-3-james.morse@arm.com>
In-Reply-To: <20200228174817.74278-3-james.morse@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=baicar@os.amperecomputing.com; 
x-originating-ip: [108.169.132.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41b7addc-2cf5-4512-dcb1-08d7c44c6660
x-ms-traffictypediagnostic: CY1PR01MB2074:|CY1PR01MB2074:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY1PR01MB20746C0C55AE213BE24B3954E3FE0@CY1PR01MB2074.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(136003)(39840400004)(366004)(396003)(189003)(199004)(26005)(66946007)(52536014)(33656002)(4326008)(81166006)(66476007)(81156014)(9686003)(64756008)(66556008)(8676002)(66446008)(6506007)(55016002)(76116006)(53546011)(110136005)(54906003)(316002)(2906002)(7416002)(8936002)(71200400001)(5660300002)(186003)(7696005)(86362001)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR01MB2074;
 H:CY1PR01MB2137.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M3TCdZKkHdLxicpqSxFcf/CsunULAwCt96STcm7olOxMZnw5tADaiTgErT9EQgQv9UmIlUmJ9sLjxMx39GRlUlJdKS08et5cwgJVG7uX1dTr1kdpzKabM8uGT/0/artnO6BE4YTlvw/ULwAV/ud4aNpLTJDPfwAX3bNLFlgPM8X6C9C33tr46R2oLS0w4cATB/1OC99ahqXyQhhsd4nJOHWX1nij5wl/n2jg1UQ58TwtBqptalVvs7iSByBHNJjguacw0oGCMUwX0R+4N1r62ogu82kDljaA7cZvbBp1a6hnsMLu5LO9z5fzwYvQdB40M6mxJ9DXqmANPOPd1q0xZVKM03Nxr9qSTUQa2cgIqQKQ6yT/lLs5ukD5rFj5N8WkepJP2Qc/9q02618OPto6YyGhAU1qt3OtPl++/sSY6eKBsYDOd+7bjQnso9MLOM/2
x-ms-exchange-antispam-messagedata: SSsvskZs0LVMdaWcAcK4wiNUy2NUJJnlSnJKCU1inOa6UhFIhf1ryIn9O5XG6CgLJs+5+EOQy7J0HK7ArayDbpWw3DSjSq4/flk1b2Ge3Hbo0Py7LIMhx9/9VcB73b9eYuhHP9vO5CrjDEEx6jy3Ow==
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41b7addc-2cf5-4512-dcb1-08d7c44c6660
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 17:07:50.7728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: da+XWrN/11G8GqGcLcHKZUOg5eu6/AjP1O+gAtN/x0tiUtid5kyBX2Fi8Kzjmcs4VKFDL85eHt7SxaaIjU2iaYmL7wXa5MuW5KZbzPaLpLE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR01MB2074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_100754_263822_10C8346B 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Luck <tony.luck@intel.com>,
 Will Deacon <will@kernel.org>, Xie XiuQi <xiexiuqi@huawei.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Rafael Wysocki <rjw@rjwysocki.net>,
 Borislav Petkov <bp@alien8.de>, Andrew Morton <akpm@linux-foundation.org>,
 Tyler Baicar <tyler@amperecomputing.com>,
 Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello James,

On Fri, Feb 28, 2020 at 12:49 PM James Morse <james.morse@arm.com> wrote:
>
> -static void ghes_handle_memory_failure(struct acpi_hest_generic_data *gdata, int sev)

> +static bool ghes_handle_memory_failure(struct ghes *ghes,
> +                                      struct acpi_hest_generic_data *gdata,
> +                                      int sev)

It doesn't look like ghes needs to be added as a parameter to this
function, unless I'm missing something :)

>  {
> -#ifdef CONFIG_ACPI_APEI_MEMORY_FAILURE
>         unsigned long pfn;
>         int flags = -1;
>         int sec_sev = ghes_severity(gdata->error_severity);
>         struct cper_sec_mem_err *mem_err = acpi_hest_get_payload(gdata);
>
> +       if (!IS_ENABLED(CONFIG_ACPI_APEI_MEMORY_FAILURE))
> +               return false;
> +
>         if (!(mem_err->validation_bits & CPER_MEM_VALID_PA))
> -               return;
> +               return false;
>
>         pfn = mem_err->physical_addr >> PAGE_SHIFT;
>         if (!pfn_valid(pfn)) {
>                 pr_warn_ratelimited(FW_WARN GHES_PFX
>                 "Invalid address in generic error data: %#llx\n",
>                 mem_err->physical_addr);
> -               return;
> +               return false;
>         }
>
>         /* iff following two events can be handled properly by now */
> @@ -440,9 +465,12 @@ static void ghes_handle_memory_failure(struct acpi_hest_generic_data *gdata, int
>         if (sev == GHES_SEV_RECOVERABLE && sec_sev == GHES_SEV_RECOVERABLE)
>                 flags = 0;
>
> -       if (flags != -1)
> +       if (flags != -1) {
>                 memory_failure_queue(pfn, flags);
> -#endif
> +               return true;
> +       }
> +
> +       return false;
>  }
>

This series looks good to me overall. I'm going to pull it and give it a spin.

Thanks,
Tyler
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
