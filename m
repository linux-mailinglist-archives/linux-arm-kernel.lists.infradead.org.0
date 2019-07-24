Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D490E72DB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytpIIEd1ckX/O1LbBLnauSnuuadWhHcnp0+YEsX1lwE=; b=R4YwyKad4kqzkl
	knhw7RxtUo2dFvXIBOk/QybL3L00+7keVXAwKk6jaCPVNb+MEALP/IQPVAThtucUyv+gZM4RS1o+D
	/2o037C61jv1Mi5T4JU569SWcSVTwdREpjM4HkplkzrleO3R0z4uPIW9zvyefwGTUNGgMlSQbAi1s
	9anNFvSTN05f0na1Kk7k4XjDHEqxuCc1AWvfUklGHH1HXYjNgv3ha4HHGbxJN+YZuOXHgjceDAUn0
	XspahbdyMPX9YaWMNvBLJCLIjtwbsw+oj5uRuDPsV/DbUijZqaGc2vkYEsu7UfVOB6yMc9P2azZR1
	ErGDUCUs0EemvLRlPYPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFXr-0001Zl-Bi; Wed, 24 Jul 2019 11:34:55 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFXi-0001Z8-1m
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:34:47 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3DEB4C0C24;
 Wed, 24 Jul 2019 11:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563968084; bh=W2MXqvrO6iDlCAN/UEJX0xsEcjKjgQxZC+iRMsZ/Kn4=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=SF8ym/OrMgZJYRMlB1VkWmAefOgeL0gsWMlgnbpJBqjWjow0hMnstTwBJoT6DkKqc
 d0q74abRzAAbBgD5fnuikqEHROE8m6gA6NXeRCdSEZO1A8SflWRxAmnFTm+hwzOXBH
 GlfZ6NWmF2xpbkoacHxxkMH0mdzN6UfZVHMvtt//sleKY74eVuh/Fb/1ouzB3cljxz
 l6WHsvwF3hBZyrugFymp00ad7PtiE7me1i/Fdxrt0KoFAl6eh3kcbBk4vxzTcGFSMx
 fDfhEYPvW3GAuwyR6WDVDceL4tlYISybdVCh3DY/I6Vnr7RxoibFp5XA5JNn1O/9QN
 PIzmDXqRPMWzg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id CE79DA006B;
 Wed, 24 Jul 2019 11:34:33 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 24 Jul 2019 04:34:28 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 24 Jul 2019 04:34:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/p/HXeKnn0WDMdXN8x+jseBImFXcqgl4zzH0ENtyZ/aWQdcWwDMjIzJ/N0tW/eNAWoc7Wx6RxJXP3fA5FaReXUQ326R9TcJ8Z1XAoAcEyltcPDoeNGoiGrfw77Y3sdGiM/L0wUEXdCP2m1DBf3NTsg/qkkCRzLG2hEEYxHK+5Zq+vW1QoGUgCvu3YQGEy4/3qooKKvt0+HWhMK/ramj+xrFKCJP2bDsQp7mi27I98o+z3wdenae/LZwG9nMTqa+QzbugBZHPwQ6F2CIMxbsUBiuMP11IrLqalEIZ6hthbeWE7Xu5pZqCYcjgPRwuEie6/0f1XRwrz2UxPVigWNaAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W2MXqvrO6iDlCAN/UEJX0xsEcjKjgQxZC+iRMsZ/Kn4=;
 b=d3coYi05x80GUcgUjWfjOwRxQ0L1GLCuK1tLcBXcgWaF8XYROdTKUgZBC0/jDPs6rkRIDnWL3U44CDU8asi80jclJtroSaG1VDmo1m4Hv0AIN3SylVFSLq9CMiAFySD37FYaLF1KCIueNZ+SpRHXVqZwI8OZO1srHM5G9FKSpZoI8V8Gq3n0LH9o0Q+k9yJI9WJ75rt9t3jH0k6ftt6QxR3G9yB8cYA6uUlzlMMBzWjBN77NrTHhS/eLa+R3Dvtp1cmBRSzf7zaIc+C9bKH/Jyj0Ws1SIAghZmomjsplPVI/s9LkhHFP2FEfvQUZWCmSU2/eduOPamXTCFDvXojHYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W2MXqvrO6iDlCAN/UEJX0xsEcjKjgQxZC+iRMsZ/Kn4=;
 b=YazhVwslzDD7+fDgd9gV+aaIBhY91B4izveFsVqUSIJg/ubjdw/tGtD5qhgqL6EmHpW4l5K08MerNWI0obUYa3LvOdWzl7pl8DwFVHeDKxyudAbvVxo8+eA61SXqsyW8g2oi4SQFp5FyUFJ5qWmpXlx5gfofydeFBQWgF6sNW8c=
Received: from BYAPR12MB3269.namprd12.prod.outlook.com (20.179.93.146) by
 BYAPR12MB2981.namprd12.prod.outlook.com (20.178.53.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 24 Jul 2019 11:34:26 +0000
Received: from BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c]) by BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c%4]) with mapi id 15.20.2094.013; Wed, 24 Jul 2019
 11:34:26 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADTx+CABnZ9AIAADuYAgAAFQOCAAAnIAIAABLTAgAFMy7CAAB4gAIAAAO7wgAAG6gCAABvPAIAAcGAAgADrmoCAAA0XIIAAA1AAgAAAhFCAABUsgIAABPNg
Date: Wed, 24 Jul 2019 11:34:26 +0000
Message-ID: <BYAPR12MB32696F0A2BFDF69F31C4311CD3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
References: <BYAPR12MB32692AF2BA127C5DA5B74804D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <6c769226-bdd9-6fe0-b96b-5a0d800fed24@arm.com>
 <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
 <20190723.115112.1824255524103179323.davem@davemloft.net>
 <20190724085427.GA10736@apalos>
 <BYAPR12MB3269AA9955844E317B62A239D3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
 <20190724095310.GA12991@apalos>
 <BYAPR12MB3269C5766F553438ECFF2C9BD3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
 <33de62bf-2f8a-bf00-9260-418b12bed24c@nvidia.com>
In-Reply-To: <33de62bf-2f8a-bf00-9260-418b12bed24c@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac25b55d-2661-4e17-666a-08d7102ae208
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR12MB2981; 
x-ms-traffictypediagnostic: BYAPR12MB2981:
x-microsoft-antispam-prvs: <BYAPR12MB298134CEB1F689F0A70EEF97D3C60@BYAPR12MB2981.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(396003)(346002)(366004)(39860400002)(189003)(199004)(20864003)(66946007)(76116006)(81166006)(66556008)(81156014)(8676002)(52536014)(5660300002)(14454004)(66446008)(4326008)(64756008)(3846002)(53936002)(9686003)(68736007)(8936002)(55016002)(6246003)(71190400001)(66476007)(186003)(229853002)(2906002)(478600001)(476003)(305945005)(71200400001)(7736002)(110136005)(316002)(54906003)(74316002)(102836004)(19627235002)(256004)(86362001)(6436002)(53546011)(66066001)(6116002)(11346002)(486006)(25786009)(33656002)(99286004)(6506007)(76176011)(7696005)(26005)(446003)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB2981;
 H:BYAPR12MB3269.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KmsRYGvimlHNzDBlH1Axage4DPz/EjcfncS/o397fyLDR39CYCp0fizzHxf+wmdauKFUdsBOf0bFDnFlF4FM8nCriCXGZUTrZHLyB0bdHpeYFLuBaRInalJNsYS/02yxrw8JveCmTlRJeg6GAHaVRx9tbJm5hDSLWXA1lzlmmmI1nnFHX1rNI5OnWkGQzNUkkpKKxXkqyOqzPHAEYOSTDvLaCsV0CldboptDdbD24FvYDrQaahA4nJBBfvDvEBEF9vL9tfbtifaZS7vdHe2wKneMRXHqL/DDRp7eaiD9KBP/h7iGP5RFePbYjflJDYIpgm811xhaR/Qk3ZF3MhjtX9ilgAv2LxLaM8OfRCplcoV1V7+uED1oVC1XlFHVR3IJVhDB7VLtYpQ4Wh83VwEFhXoAOIK8HSN05uM+wK2w72A=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ac25b55d-2661-4e17-666a-08d7102ae208
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 11:34:26.2457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2981
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_043446_109091_22F6E73D 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "wens@csie.org" <wens@csie.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 David Miller <davem@davemloft.net>, "lists@bofh.nu" <lists@bofh.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Hunter <jonathanh@nvidia.com>
Date: Jul/24/2019, 12:10:47 (UTC+00:00)

> 
> On 24/07/2019 11:04, Jose Abreu wrote:
> 
> ...
> 
> > Jon, I was able to replicate (at some level) your setup:
> > 
> > # dmesg | grep -i arm-smmu
> > [    1.337322] arm-smmu 70040000.iommu: probing hardware 
> > configuration...
> > [    1.337330] arm-smmu 70040000.iommu: SMMUv2 with:
> > [    1.337338] arm-smmu 70040000.iommu:         stage 1 translation
> > [    1.337346] arm-smmu 70040000.iommu:         stage 2 translation
> > [    1.337354] arm-smmu 70040000.iommu:         nested translation
> > [    1.337363] arm-smmu 70040000.iommu:         stream matching with 128 
> > register groups
> > [    1.337374] arm-smmu 70040000.iommu:         1 context banks (0 
> > stage-2 only)
> > [    1.337383] arm-smmu 70040000.iommu:         Supported page sizes: 
> > 0x61311000
> > [    1.337393] arm-smmu 70040000.iommu:         Stage-1: 48-bit VA -> 
> > 48-bit IPA
> > [    1.337402] arm-smmu 70040000.iommu:         Stage-2: 48-bit IPA -> 
> > 48-bit PA
> > 
> > # dmesg | grep -i stmmac
> > [    1.344106] stmmaceth 70000000.ethernet: Adding to iommu group 0
> > [    1.344233] stmmaceth 70000000.ethernet: no reset control found
> > [    1.348276] stmmaceth 70000000.ethernet: User ID: 0x10, Synopsys ID: 
> > 0x51
> > [    1.348285] stmmaceth 70000000.ethernet:     DWMAC4/5
> > [    1.348293] stmmaceth 70000000.ethernet: DMA HW capability register 
> > supported
> > [    1.348302] stmmaceth 70000000.ethernet: RX Checksum Offload Engine 
> > supported
> > [    1.348311] stmmaceth 70000000.ethernet: TX Checksum insertion 
> > supported
> > [    1.348320] stmmaceth 70000000.ethernet: TSO supported
> > [    1.348328] stmmaceth 70000000.ethernet: Enable RX Mitigation via HW 
> > Watchdog Timer
> > [    1.348337] stmmaceth 70000000.ethernet: TSO feature enabled
> > [    1.348409] libphy: stmmac: probed
> > [ 4159.140990] stmmaceth 70000000.ethernet eth0: PHY [stmmac-0:01] 
> > driver [Generic PHY]
> > [ 4159.141005] stmmaceth 70000000.ethernet eth0: phy: setting supported 
> > 00,00000000,000062ff advertising 00,00000000,000062ff
> > [ 4159.142359] stmmaceth 70000000.ethernet eth0: No Safety Features 
> > support found
> > [ 4159.142369] stmmaceth 70000000.ethernet eth0: IEEE 1588-2008 Advanced 
> > Timestamp supported
> > [ 4159.142429] stmmaceth 70000000.ethernet eth0: registered PTP clock
> > [ 4159.142439] stmmaceth 70000000.ethernet eth0: configuring for 
> > phy/gmii link mode
> > [ 4159.142452] stmmaceth 70000000.ethernet eth0: phylink_mac_config: 
> > mode=phy/gmii/Unknown/Unknown adv=00,00000000,000062ff pause=10 link=0 
> > an=1
> > [ 4159.142466] stmmaceth 70000000.ethernet eth0: phy link up 
> > gmii/1Gbps/Full
> > [ 4159.142475] stmmaceth 70000000.ethernet eth0: phylink_mac_config: 
> > mode=phy/gmii/1Gbps/Full adv=00,00000000,00000000 pause=0f link=1 an=0
> > [ 4159.142481] stmmaceth 70000000.ethernet eth0: Link is Up - 1Gbps/Full 
> > - flow control rx/tx
> > 
> > The only missing point is the NFS boot that I can't replicate with this 
> > setup. But I did some sanity checks:
> > 
> > Remote Enpoint:
> > # dd if=/dev/urandom of=output.dat bs=128M count=1
> > # nc -c 192.168.0.2 1234 < output.dat
> > # md5sum output.dat 
> > fde9e0818281836e4fc0edfede2b8762  output.dat
> > 
> > DUT:
> > # nc -l -c -p 1234 > output.dat
> > # md5sum output.dat 
> > fde9e0818281836e4fc0edfede2b8762  output.dat
> 
> On my setup, if I do not use NFS to mount the rootfs, but then manually
> mount the NFS share after booting, I do not see any problems reading or
> writing to files on the share. So I am not sure if it is some sort of
> race that is occurring when mounting the NFS share on boot. It is 100%
> reproducible when using NFS for the root file-system.

I don't understand how can there be corruption then unless the IP AXI 
parameters are misconfigured which can lead to sporadic undefined 
behavior.

These prints from your logs:
[   14.579392] Run /init as init process
/init: line 58: chmod: command not found
[ 10:22:46 ] L4T-INITRD Build DATE: Mon Jul 22 10:22:46 UTC 2019
[ 10:22:46 ] Root device found: nfs
[ 10:22:46 ] Ethernet interfaces: eth0
[ 10:22:46 ] IP Address: 10.21.140.41

Where are they coming from ? Do you have any extra init script ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
