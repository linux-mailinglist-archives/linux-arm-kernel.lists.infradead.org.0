Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0103E1125EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 09:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYwKjkwnBXXjXmxuK02r47UteoP69yJ6Np5tesKlozU=; b=GJqQfc+x/oHr9L
	UHdx8iS9x13qCwyoabaaOvaeBH/Dzak/iCwYgavvfXbQS5EL1kyZhX0YyiXQOCgOAUAhhkY9OxdON
	SiCGwzcpSKxJ7yaGwgqWj///8LxorX4Ukvl+aEwP160kkLAuZx6/zAQOuceKB5ZpJ7JLGkxLCRja3
	s8HFjloqJ+er5zJ6IUXyFSNQbpX06xRQgDHKs5w25x7GNEsWr+XPC/Gd9T9JzXVoeqlciKwzuKGSn
	d7CZZ115rO+7KNdTB2BOky3sVrOGpomQZloAEK+918cIvKq/jeMdvfeRLGuBt+RfsnZLdu2plKS5r
	Sm51A4JIY4Bpbkaurcng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQNK-0001Om-VO; Wed, 04 Dec 2019 08:51:11 +0000
Received: from esa19.fujitsucc.c3s2.iphmx.com ([216.71.158.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQN9-0001Ng-9O; Wed, 04 Dec 2019 08:51:01 +0000
IronPort-SDR: K+f4mbaE01CgUn+kI/mlNa5K7e4l6f/coIQaM7cS+wVnUzaGBKkbyAqYlw8wedy3v+00QiP2Gg
 cwrK4gQCCHQ2wWEI8UtkeDI6GuTJFXA652IaYvSB5mrAyXIuTeVg0tzMB/dryc/1QYG8dUgKc/
 HsPMjJ4X5nKn5W5EZRaHq0FeoEuq8hhSYLnK8g0w1koGWJ+8pGCeeJKsVrrp/5VEhjAheY4f7b
 h5pNPm5OOhU1Fh7bcM2Pco0QWPoWXg9VBIwvpgurOfw5pRd7lriZwd6IUYRsXYOLRbq2pKxms3
 sAE=
X-IronPort-AV: E=McAfee;i="6000,8403,9460"; a="8204856"
X-IronPort-AV: E=Sophos;i="5.69,276,1571670000"; 
   d="scan'208";a="8204856"
Received: from mail-ty1jpn01lp2058.outbound.protection.outlook.com (HELO
 JPN01-TY1-obe.outbound.protection.outlook.com) ([104.47.93.58])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 17:50:48 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CL623QkuUIqWnPvgnMOqB9eDxzSrIoV4k2i1XkpXTms1LYxfbd5h+Sgc4jj6aFsI6GUrPEPTMqzvy2K5yCOpAM+aMirVKV7RdRnOIQIchu+Zlhp0Ibx9lrZgYK0njDM+lLD2ebB3bfFY1YZ3/yMLDFufzYYR1gEHCpGZ5VH6Lrznxsp3w/c9AZkV8LniXFK3WdAv3kx7Y/DCU1KQBinHUgfndpg+n/qVMbJj+PdfMXjgQkJx6573Oxwo/VjM4pPAdQZboiiZELLBHSdP6A5tGc+ixhCgH3/yuN/WeAWuuw6ex4v7W34TMEyAjQOdcVNpspN887/KTdDwZXEdS8ypDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hiB7hX9hszm0/OqvPC6wE5sIe/RIF1baZHyUyB5YDsU=;
 b=TFzE/V7IxREKdSo7/0A89+B99jGXFmsC4cjhgE/5yVoaB0bzoT3ePtyHjWx33z3Oa9D+Fs5QH48Dn2r9iAnR2p+4vjn6vMnlEq8+GNQqqCVPPdpevBKSqP2ld0PwXXYKTb5DNZwjh0HplwWwabofdEksSP0vh7JdKYZnwRvfpBVkQWofpxjfwmGEykK+BKMWiZgot66s9JlhEJAbzESIzmOa00uirRwO+NE/QS7KTMUUag+Ha22mJD3fkoms0VT2j6iGZNNidML+cNog7kwf7wMtUL602lm78uF0NN+f+mmib3AQXEqaIBvZ07XZQmaAInvPYgCsjiCKtoqijwwWqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hiB7hX9hszm0/OqvPC6wE5sIe/RIF1baZHyUyB5YDsU=;
 b=JnOB2fuxxmHMSJxrVtGyTxpYUTKbS3qsOodyQzmIJeN4pIXauzTTfUNMf/sP3/JkuX6jC999oE2GCM+JpC0mRBNqs8gAsdGa5D/hFKBcDq0fTgCtQzD5ui/+V3npQkpOZsgIuP7AMQbgPUZT14GyHbacEbHizMV3aGkfVMi79T0=
Received: from OSBPR01MB4006.jpnprd01.prod.outlook.com (20.178.98.151) by
 OSBPR01MB5192.jpnprd01.prod.outlook.com (20.179.181.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Wed, 4 Dec 2019 08:50:44 +0000
Received: from OSBPR01MB4006.jpnprd01.prod.outlook.com
 ([fe80::5849:132c:5ff5:db9b]) by OSBPR01MB4006.jpnprd01.prod.outlook.com
 ([fe80::5849:132c:5ff5:db9b%6]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 08:50:44 +0000
From: "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>
To: 'Masayoshi Mizuma' <msys.mizuma@gmail.com>, Ard Biesheuvel
 <ard.biesheuvel@linaro.org>, "m.mizuma@jp.fujitsu.com"
 <m.mizuma@jp.fujitsu.com>
Subject: RE: [PATCH v2 2/2] efi: arm64: Introduce /proc/efi/memreserve to tell
 the persistent pages
Thread-Topic: [PATCH v2 2/2] efi: arm64: Introduce /proc/efi/memreserve to
 tell the persistent pages
Thread-Index: AQHVqhZSNuQ9EyZnsEKKmGhUlfiRKKeppb1Q
Date: Wed, 4 Dec 2019 08:50:44 +0000
Message-ID: <OSBPR01MB400616833DA3511C46279AD3955D0@OSBPR01MB4006.jpnprd01.prod.outlook.com>
References: <20191203201410.28045-1-msys.mizuma@gmail.com>
 <20191203201410.28045-3-msys.mizuma@gmail.com>
In-Reply-To: <20191203201410.28045-3-msys.mizuma@gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=d.hatayama@fujitsu.com; 
x-originating-ip: [210.162.184.119]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ee9612d-cc92-469e-35c5-08d778970cf5
x-ms-traffictypediagnostic: OSBPR01MB5192:|OSBPR01MB5192:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB519289FCC28711B8E61BF263955D0@OSBPR01MB5192.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(366004)(376002)(39860400002)(189003)(199004)(13464003)(74316002)(8676002)(229853002)(26005)(11346002)(9686003)(81166006)(8936002)(55016002)(6506007)(25786009)(6436002)(478600001)(76176011)(446003)(71190400001)(53546011)(7696005)(71200400001)(186003)(102836004)(4326008)(14454004)(99286004)(76116006)(81156014)(7736002)(33656002)(256004)(6116002)(54906003)(66946007)(3846002)(305945005)(64756008)(66446008)(66476007)(66556008)(6246003)(110136005)(2906002)(85182001)(5660300002)(86362001)(52536014)(14444005)(316002)(777600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:OSBPR01MB5192;
 H:OSBPR01MB4006.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VwebyWw8lOg1YHkAwILcWETdEa52F5/Z/GDsGn9kChwAXINqC3XNUtg4GAL509KjZ9RmxF1uPMGjXZMsATQuDXiiO4aT0dusoitkYibhowS3Q6VTEMjvzW71TclzcdSO7zMbawcKNcOUPiYt3DscuLHnLSkpMqphnFRZvi39IXqwnUtrw2dkGeLt6GwG2NjdHIwFu1mxA9jMN8fDozzRDYcgoA6TvFnl2oX7M1QZChU4zcis9wDCiAZPT3ZzQd7KjQ/NOoy+9VAe/xR5VkJ9oSvIDhAIpXO1APVWjL6kd1dmigqsMnUhl/Yv7Du9LK3SBcHFtMwk3vpGdC6OwibqcJXoBjrbV45JqqfwGnNSdqkH9wIurnQY2A9hxwxnM/L4POpPkYGX6o1nc2rIaRRWeWVZ35abx1v/AMiRRpGeS8bac+9SHq73ECgWcAtmfG0o6z/KUeffXWOarlMs6GEpWobu1znvCI2DSqqxmNfDXCtOD4fJ9imEUa4YVEswBDzIZJ0SdwaH9eIiOCXx6x9gKg==
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ee9612d-cc92-469e-35c5-08d778970cf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 08:50:44.7666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NZSL7F9TNVepWnr+jnNVpNcgGBTCPPDr6gpz3qs6FgPn6SwQPwFQTaBMMEoJV03UZA5D+i+dqXUL9/7/xgt57RhHwOS6rqR3HaKdx+Ntuo4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB5192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_005059_718792_6C09C66D 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.71.158.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Biederman <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: linux-kernel-owner@vger.kernel.org
> [mailto:linux-kernel-owner@vger.kernel.org] On Behalf Of Masayoshi Mizuma
> Sent: Wednesday, December 4, 2019 5:14 AM
> To: Ard Biesheuvel <ard.biesheuvel@linaro.org>;
> linux-arm-kernel@lists.infradead.org; linux-efi@vger.kernel.org
> Cc: Masayoshi Mizuma <msys.mizuma@gmail.com>; Mizuma, Masayoshi/水間 理仁
> <m.mizuma@jp.fujitsu.com>; linux-kernel@vger.kernel.org;
> kexec@lists.infradead.org; Hatayama, Daisuke/畑山 大輔
> <d.hatayama@fujitsu.com>; Eric Biederman <ebiederm@xmission.com>; Matthias
> Brugger <matthias.bgg@gmail.com>
> Subject: [PATCH v2 2/2] efi: arm64: Introduce /proc/efi/memreserve to tell the
> persistent pages
> 
> From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> 
> kexec reboot stops in early boot sequence because efi_config_parse_tables()
> refers garbage data. We can see the log with memblock=debug kernel option:
> 
>   efi:  ACPI 2.0=0x9821790014  PROP=0x8757f5c0  SMBIOS 3.0=0x9820740000
> MEMRESERVE=0x9820bfdc58
>   memblock_reserve: [0x0000009820bfdc58-0x0000009820bfdc67]
> efi_config_parse_tables+0x228/0x278
>   memblock_reserve: [0x0000000082760000-0x00000000324d07ff]
> efi_config_parse_tables+0x228/0x278
>   memblock_reserve: [0xcc4f84ecc0511670-0x5f6e5214a7fd91f9]
> efi_config_parse_tables+0x244/0x278
>   memblock_reserve: [0xd2fd4144b9af693d-0xad0c1db1086f40a2]
> efi_config_parse_tables+0x244/0x278
>   memblock_reserve: [0x0c719bb159b1fadc-0x5aa6e62a1417ce12]
> efi_config_parse_tables+0x244/0x278
>   ...
> 
> That happens because 0x82760000, struct linux_efi_memreserve, is destroyed.
> 0x82760000 is pointed from efi.mem_reseve, and efi.mem_reserve points the
> head page of LPI pending table and LPI property table which are allocated by
> gic_reserve_range().
> 
> The destroyer is kexec. kexec locates the initrd to the area:
> 
>   ]# kexec -d -l /boot/vmlinuz-5.4.0-rc7 /boot/initramfs-5.4.0-rc7.img
> --reuse-cmdline
>   ...
>   initrd: base 82290000, size 388dd8ah (59301258)
>   ...
> 
> From dynamic debug log. initrd is located in segment[1]:
>   machine_kexec_prepare:70:
>     kexec kimage info:
>       type:        0
>       start:       85b30680
>       head:        0
>       nr_segments: 4
>         segment[0]: 0000000080480000 - 0000000082290000, 0x1e10000 bytes, 481
> pages
>         segment[1]: 0000000082290000 - 0000000085b20000, 0x3890000 bytes, 905
> pages
>         segment[2]: 0000000085b20000 - 0000000085b30000, 0x10000 bytes, 1
> pages
>         segment[3]: 0000000085b30000 - 0000000085b40000, 0x10000 bytes, 1
> pages
> 
> kexec searches the memory region to locate initrd through
> "System RAM" in /proc/iomem. The pending tables are included in
> "System RAM" because they are allocated by alloc_pages(), so kexec
> destroys the LPI pending tables.
> 
> Introduce /proc/efi/memreserve to tell the pages pointed by
> efi.mem_reserve so that kexec can avoid the area to locate initrd.
> 
> Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> ---
>  drivers/firmware/efi/efi.c | 75 ++++++++++++++++++++++++++++++++++++--
>  1 file changed, 72 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
> index d8157cb34..80bbe0b3e 100644
> --- a/drivers/firmware/efi/efi.c
> +++ b/drivers/firmware/efi/efi.c
> @@ -325,17 +325,87 @@ static __init int efivar_ssdt_load(void)
>  static inline int efivar_ssdt_load(void) { return 0; }
>  #endif
> 
> +static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
> +
>  #ifdef CONFIG_PROC_FS
>  static struct proc_dir_entry *proc_efi;
> +#ifdef CONFIG_KEXEC
> +static int memreserve_show(struct seq_file *m, void *v)
> +{
> +	struct linux_efi_memreserve *rsv;
> +	phys_addr_t start, end;
> +	unsigned long prsv;
> +	int count, i;
> +
> +	if ((efi_memreserve_root == (void *)ULONG_MAX) ||
> +			(!efi_memreserve_root))
> +		return -ENODEV;
> +
> +	for (prsv = efi_memreserve_root->next; prsv; prsv = rsv->next) {
> +		rsv = memremap(prsv, sizeof(*rsv), MEMREMAP_WB);
> +		if (!rsv) {
> +			pr_err("Could not map efi_memreserve\n");
> +			return -ENOMEM;
> +		}
> +		count = atomic_read(&rsv->count);
> +		for (i = 0; i < count; i++) {
> +			start = rsv->entry[i].base;
> +			end = start + rsv->entry[i].size - 1;
> +
> +			seq_printf(m, "%pa-%pa\n", &start, &end);
> +		}

It looks to me that we reach the same issue as sysfs if
memreserve_show() calls seq_printf multiple times this way.
Default buffer size of struct seq_file is also PAGE_SIZE.
We can configure default buffer size using single_open_size(),
but I think it better to do the same thing as /proc/iomem
(and /proc/mounts and many others) than choosing a certain
size as default value.

Looking into implementation of /proc/iomem, its show method, r_show(),
calls seq_printf() only once; in other words, r_show() is
called the number of lines of /proc/iomem, which is equal to
the number of resource objects. Then, there is no buffer size
issue because "%pa-%pa\n" consumes at most (16 + 16 + 2) bytes
per line.

How about doing as /proc/iomem?

> +		memunmap(rsv);
> +	}
> +
> +	return 0;
> +}
> +
> +static int memreserve_open(struct inode *inode, struct file *filp)
> +{
> +	return single_open(filp, memreserve_show, NULL);
> +}
> +
> +static const struct file_operations memreserve_fops = {
> +	.owner		= THIS_MODULE,
> +	.open		= memreserve_open,
> +	.read		= seq_read,
> +	.llseek		= seq_lseek,
> +	.release	= single_release,
> +};
> +
> +static int __init efi_proc_memreserve(void)
> +{
> +	struct proc_dir_entry *pde;
> +
> +	if ((efi_memreserve_root == (void *)ULONG_MAX) ||
> +			(!efi_memreserve_root))
> +		return 0;
> +
> +	pde = proc_create("memreserve", 0444, proc_efi, &memreserve_fops);
> +	if (!pde) {
> +		pr_err("/proc/efi: Cannot create /proc/efi/memreserve
> file.\n");
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> +#else
> +static inline int efi_proc_memreserve(void) { return 0; }
> +#endif /* CONFIG_KEXEC */
> +
>  static int __init efi_proc_init(void)
>  {
> +	int error = 1;
> +
>  	proc_efi = proc_mkdir("efi", NULL);
>  	if (!proc_efi) {
>  		pr_err("/proc/efi: Cannot create /proc/efi directroy.\n");
> -		return 1;
> +		return error;
>  	}
> 
> -	return 0;
> +	error = efi_proc_memreserve();
> +
> +	return error;
>  }
>  #else
>  static inline int efi_proc_init(void) { return 0; }
> @@ -986,7 +1056,6 @@ int efi_status_to_err(efi_status_t status)
>  }
> 
>  static DEFINE_SPINLOCK(efi_mem_reserve_persistent_lock);
> -static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
> 
>  static int __init efi_memreserve_map_root(void)
>  {
> --
> 2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
