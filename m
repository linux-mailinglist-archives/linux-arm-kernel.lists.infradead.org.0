Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B7B154A80
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 18:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWVabQ8f/uXPwW4hK8dPmxlEjTSE/hHFwDYjMTM2Lco=; b=C11Ys5E7ClFOAi
	XE9xNGOqs0etWsx/T3+jx3nhBiUzBK+DxsIIrF1CRSwoq03ZtsSPm3QtMFB6958J17+bpt42i117D
	8+wrpjuNXEqFbi/QPIwAYVYFAXlBGwiClMeLD0RVZin1zpx3l7WUeVNSogPWPw9GwCL8FY0nt/ZLn
	9VxAYHod6tgj3Qv1s0EFDWQXPEV0Vwzm9GnB15SC2CkUii1qo1BarWv3tRWwaEtS6prDDc6mTjH9p
	5EV+8laoXruv9BsYjtoA9FbHJyps0Zi1K386+PeRQ3I02HyRZ1voc+GocVQj4SiUMcnM2hogC6DSK
	FhxtjyZ8+xZZKZU9WF7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izlGh-0001XE-GN; Thu, 06 Feb 2020 17:48:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izlGY-0001WO-Ij
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 17:48:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id z124so3085172pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 09:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=nwpR41dlXPbuY8wR5aHkScJu7Rm/rlVJZzojPKTXVr4=;
 b=W+WXpn9ZNUXy+7tRIF9cQvm6PmFO2sQpQu70UJHHA6gK4mlOuTA5eMLeWR8oydtl+z
 V6L5FD4ikJcc7qwFxsr3dFw1P5iOPYXpltSa3Qlts+QwYwxiWmPNct+F5sK1m7B05FI3
 AeUB2j1kEdI87yNOAa5UZNChnjRx9ci/Y0bzXrAMfaZTulEDW6ib62OWc1nkxIaVgfV3
 OMSizYe6o4Y7GA5UdLrV/gy4W3o+eQzQpmu+clZ2jbPTw+Hg237oq44En14Lr0pQpcAU
 ARCJoFpnlbbwxakaIXY2LBIHBahuOg7+Pl8fXDJVSicT9/oquKJhO8+DbktV3WldZLly
 xezA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=nwpR41dlXPbuY8wR5aHkScJu7Rm/rlVJZzojPKTXVr4=;
 b=HfC9DcfcJJBvOmmvQLFds262c5+qAYu7eUDjbJKxElGjk8hr004yeLdbvmYVhvBgvT
 ri3FssK+gEuqeHF/kjgzhF0zfF8CVNhdUzJEW31YnLXL7WsdnVuc0F6zqFG5isws/ITf
 DxRLZLj7YLD7lbfB64mJ7hl9nHsiOrg5/tcnR1Z7rApoXAiAk9a2tXMTmHuVqajaUpP6
 +RBHt3ebpAbApq+82EYwoGnBcj/OcjF1F+bYP5yuPZaPYAm0qnlpysrUGSmlMeQzma6K
 POYGpWV4PznDbuPKpEA2IhYWGXAcy0jBiYuSr/BKgX9mMTzLFAjBba9eYktJPJPpPZvZ
 Da3w==
X-Gm-Message-State: APjAAAV4esCJ/pBLpdSLe0w54WAONtjhScoKZhWF6dxKk95lfkKupldr
 vFVG2C+DHmfyI4j0vMHzazuALw==
X-Google-Smtp-Source: APXvYqzrs4okYndDdsgY/TsIUS+n6/fxKaUVi9MklVh02Zv0ZfTJKtyDmGFHDZRS2rxMmPhPT2PYaw==
X-Received: by 2002:a63:ba05:: with SMTP id k5mr4826396pgf.158.1581011317013; 
 Thu, 06 Feb 2020 09:48:37 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w187sm42557pfw.62.2020.02.06.09.48.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 09:48:36 -0800 (PST)
Date: Thu, 6 Feb 2020 10:48:33 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: =?iso-8859-1?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Subject: Re: [PATCH v3 2/2] remoteproc: Add elf64 support in elf loader
Message-ID: <20200206174833.GA14096@xps15>
References: <20200129163013.GA16538@xps15>
 <20200204174412.16814-1-cleger@kalray.eu>
 <20200204174412.16814-3-cleger@kalray.eu>
 <20200205224936.GB25901@xps15>
 <1065812225.2604892.1580978273748.JavaMail.zimbra@kalray.eu>
 <2083982862.2712681.1581001544395.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2083982862.2712681.1581001544395.JavaMail.zimbra@kalray.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_094838_627267_18A8842E 
X-CRM114-Status: GOOD (  25.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc <linux-doc@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 04:05:44PM +0100, Cl=E9ment Leger wrote:
> Hi Mathieu,
> =

> ----- On 6 Feb, 2020, at 09:37, Cl=E9ment Leger cleger@kalray.eu wrote:
> =

> > Hi Mathieu,
> > =

> > ----- On 5 Feb, 2020, at 23:49, Mathieu Poirier mathieu.poirier@linaro.=
org
> > wrote:
> > =

> >> On Tue, Feb 04, 2020 at 06:44:12PM +0100, Clement Leger wrote:
> >>> elf32 and elf64 mainly differ by their types. In order to avoid
> >>> copy/pasting the whole loader code, generate static inline functions
> >>> which will access values according to the elf class. It allows to kee=
p a
> >>> common loader basis.
> >>> In order to accommodate both elf types sizes, the maximum size for a
> >>> elf header member is chosen using the maximum value of both elf class.
> >>> =

> >>> Signed-off-by: Clement Leger <cleger@kalray.eu>
> >>> Tested-by: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
> >>> ---
> >>>  Documentation/remoteproc.txt               |   2 +-
> >>>  drivers/remoteproc/remoteproc_elf_loader.c | 147 ++++++++++++++++++-=
----------
> >>>  drivers/remoteproc/remoteproc_elf_loader.h |  69 ++++++++++++++
> >>>  drivers/remoteproc/remoteproc_internal.h   |   2 +-
> >>>  drivers/remoteproc/st_remoteproc.c         |   2 +-
> >>>  include/linux/remoteproc.h                 |   4 +-
> >>>  6 files changed, 167 insertions(+), 59 deletions(-)
> >>>  create mode 100644 drivers/remoteproc/remoteproc_elf_loader.h
> >>> =

> >>> diff --git a/Documentation/remoteproc.txt b/Documentation/remoteproc.=
txt
> >>> index 03c3d2e568b0..2be1147256e0 100644
> >>> --- a/Documentation/remoteproc.txt
> >>> +++ b/Documentation/remoteproc.txt
> >>> @@ -230,7 +230,7 @@ in the used rings.
> >>>  Binary Firmware Structure
> >>>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> >>>  =

> >>> -At this point remoteproc only supports ELF32 firmware binaries. Howe=
ver,
> >>> +At this point remoteproc supports ELF32 and ELF64 firmware binaries.=
 However,
> >>>  it is quite expected that other platforms/devices which we'd want to
> >>>  support with this framework will be based on different binary format=
s.
> >>>  =

> >>> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c
> >>> b/drivers/remoteproc/remoteproc_elf_loader.c
> >>> index 606aae166eba..21fd2b2fe5ae 100644
> >>> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> >>> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> >>> @@ -23,6 +23,7 @@
> >>>  #include <linux/elf.h>
> >>>  =

> >>>  #include "remoteproc_internal.h"
> >>> +#include "remoteproc_elf_loader.h"
> >>>  =

> >>>  /**
> >>>   * rproc_elf_sanity_check() - Sanity Check ELF firmware image
> >>> @@ -35,8 +36,16 @@ int rproc_elf_sanity_check(struct rproc *rproc, co=
nst struct
> >>> firmware *fw)
> >>>  {
> >>>  	const char *name =3D rproc->firmware;
> >>>  	struct device *dev =3D &rproc->dev;
> >>> +	/*
> >>> +	 * Elf files are beginning with the same structure. Thus, to simpli=
fy
> >>> +	 * header parsing, we can use the elf32_hdr one for both elf64 and
> >>> +	 * elf32.
> >>> +	 */
> >>>  	struct elf32_hdr *ehdr;
> >>> +	u32 elf_shdr_size;
> >>> +	u64 phoff, shoff;
> >>>  	char class;
> >>> +	u16 phnum;
> >>>  =

> >>>  	if (!fw) {
> >>>  		dev_err(dev, "failed to load %s\n", name);
> >>> @@ -50,13 +59,22 @@ int rproc_elf_sanity_check(struct rproc *rproc, c=
onst struct
> >>> firmware *fw)
> >>>  =

> >>>  	ehdr =3D (struct elf32_hdr *)fw->data;
> >>>  =

> >>> -	/* We only support ELF32 at this point */
> >>> +	if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG)) {
> >>> +		dev_err(dev, "Image is corrupted (bad magic)\n");
> >>> +		return -EINVAL;
> >>> +	}
> >>> +
> >>>  	class =3D ehdr->e_ident[EI_CLASS];
> >>> -	if (class !=3D ELFCLASS32) {
> >>> +	if (class !=3D ELFCLASS32 && class !=3D ELFCLASS64) {
> >>>  		dev_err(dev, "Unsupported class: %d\n", class);
> >>>  		return -EINVAL;
> >>>  	}
> >>>  =

> >>> +	if (class =3D=3D ELFCLASS64 && fw->size < sizeof(struct elf64_hdr))=
 {
> >>> +		dev_err(dev, "elf64 header is too small\n");
> >>> +		return -EINVAL;
> >>> +	}
> >>> +
> >>>  	/* We assume the firmware has the same endianness as the host */
> >>>  # ifdef __LITTLE_ENDIAN
> >>>  	if (ehdr->e_ident[EI_DATA] !=3D ELFDATA2LSB) {
> >>> @@ -67,26 +85,29 @@ int rproc_elf_sanity_check(struct rproc *rproc, c=
onst struct
> >>> firmware *fw)
> >>>  		return -EINVAL;
> >>>  	}
> >>>  =

> >>> -	if (fw->size < ehdr->e_shoff + sizeof(struct elf32_shdr)) {
> >>> -		dev_err(dev, "Image is too small\n");
> >>> -		return -EINVAL;
> >>> -	}
> >>> +	phoff =3D elf_hdr_e_phoff(class, fw->data);
> >>> +	shoff =3D elf_hdr_e_shoff(class, fw->data);
> >>> +	phnum =3D  elf_hdr_e_phnum(class, fw->data);
> >>> +	elf_shdr_size =3D elf_size_of_shdr(class);
> >>>  =

> >>> -	if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG)) {
> >>> -		dev_err(dev, "Image is corrupted (bad magic)\n");
> >>> +	if (fw->size < shoff + elf_shdr_size) {
> >>> +		dev_err(dev, "Image is too small\n");
> >>>  		return -EINVAL;
> >>>  	}
> >>>  =

> >>> -	if (ehdr->e_phnum =3D=3D 0) {
> >>> +	if (phnum =3D=3D 0) {
> >>>  		dev_err(dev, "No loadable segments\n");
> >>>  		return -EINVAL;
> >>>  	}
> >>>  =

> >>> -	if (ehdr->e_phoff > fw->size) {
> >>> +	if (phoff > fw->size) {
> >>>  		dev_err(dev, "Firmware size is too small\n");
> >>>  		return -EINVAL;
> >>>  	}
> >>>  =

> >>> +	dev_dbg(dev, "Firmware is an elf%d file\n",
> >>> +		class =3D=3D ELFCLASS32 ? 32 : 64);
> >>> +
> >>>  	return 0;
> >>>  }
> >>>  EXPORT_SYMBOL(rproc_elf_sanity_check);
> >>> @@ -102,11 +123,9 @@ EXPORT_SYMBOL(rproc_elf_sanity_check);
> >>>   * Note that the boot address is not a configurable property of all =
remote
> >>>   * processors. Some will always boot at a specific hard-coded addres=
s.
> >>>   */
> >>> -u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmwa=
re *fw)
> >>> +u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmwa=
re *fw)
> >>>  {
> >>> -	struct elf32_hdr *ehdr  =3D (struct elf32_hdr *)fw->data;
> >>> -
> >>> -	return ehdr->e_entry;
> >>> +	return elf_hdr_e_entry(fw_elf_get_class(fw), fw->data);
> >>>  }
> >>>  EXPORT_SYMBOL(rproc_elf_get_boot_addr);
> >>>  =

> >>> @@ -137,37 +156,41 @@ EXPORT_SYMBOL(rproc_elf_get_boot_addr);
> >>>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmwa=
re *fw)
> >>>  {
> >>>  	struct device *dev =3D &rproc->dev;
> >>> -	struct elf32_hdr *ehdr;
> >>> -	struct elf32_phdr *phdr;
> >>> +	const void *ehdr, *phdr;
> >>>  	int i, ret =3D 0;
> >>> +	u16 phnum;
> >>>  	const u8 *elf_data =3D fw->data;
> >>> +	u8 class =3D fw_elf_get_class(fw);
> >>> +	u32 elf_phdr_size =3D elf_size_of_phdr(class);
> >>>  =

> >>> -	ehdr =3D (struct elf32_hdr *)elf_data;
> >>> -	phdr =3D (struct elf32_phdr *)(elf_data + ehdr->e_phoff);
> >>> +	ehdr =3D elf_data;
> >>> +	phnum =3D elf_hdr_e_phnum(class, ehdr);
> >>> +	phdr =3D elf_data + elf_hdr_e_phoff(class, ehdr);
> >>>  =

> >>>  	/* go through the available ELF segments */
> >>> -	for (i =3D 0; i < ehdr->e_phnum; i++, phdr++) {
> >>> -		u32 da =3D phdr->p_paddr;
> >>> -		u32 memsz =3D phdr->p_memsz;
> >>> -		u32 filesz =3D phdr->p_filesz;
> >>> -		u32 offset =3D phdr->p_offset;
> >>> +	for (i =3D 0; i < phnum; i++, phdr +=3D elf_phdr_size) {
> >>> +		u64 da =3D elf_phdr_p_paddr(class, phdr);
> >>> +		u64 memsz =3D elf_phdr_p_memsz(class, phdr);
> >>> +		u64 filesz =3D elf_phdr_p_filesz(class, phdr);
> >>> +		u64 offset =3D elf_phdr_p_offset(class, phdr);
> >>> +		u32 type =3D elf_phdr_p_type(class, phdr);
> >>>  		void *ptr;
> >>>  =

> >>> -		if (phdr->p_type !=3D PT_LOAD)
> >>> +		if (type !=3D PT_LOAD)
> >>>  			continue;
> >>>  =

> >>> -		dev_dbg(dev, "phdr: type %d da 0x%x memsz 0x%x filesz 0x%x\n",
> >>> -			phdr->p_type, da, memsz, filesz);
> >>> +		dev_dbg(dev, "phdr: type %d da 0x%llx memsz 0x%llx filesz 0x%llx\n=
",
> >>> +			type, da, memsz, filesz);
> >>>  =

> >>>  		if (filesz > memsz) {
> >>> -			dev_err(dev, "bad phdr filesz 0x%x memsz 0x%x\n",
> >>> +			dev_err(dev, "bad phdr filesz 0x%llx memsz 0x%llx\n",
> >>>  				filesz, memsz);
> >>>  			ret =3D -EINVAL;
> >>>  			break;
> >>>  		}
> >>>  =

> >>>  		if (offset + filesz > fw->size) {
> >>> -			dev_err(dev, "truncated fw: need 0x%x avail 0x%zx\n",
> >>> +			dev_err(dev, "truncated fw: need 0x%llx avail 0x%zx\n",
> >>>  				offset + filesz, fw->size);
> >>>  			ret =3D -EINVAL;
> >>>  			break;
> >>> @@ -176,14 +199,15 @@ int rproc_elf_load_segments(struct rproc *rproc=
, const
> >>> struct firmware *fw)
> >>>  		/* grab the kernel address for this device address */
> >>>  		ptr =3D rproc_da_to_va(rproc, da, memsz);
> >>>  		if (!ptr) {
> >>> -			dev_err(dev, "bad phdr da 0x%x mem 0x%x\n", da, memsz);
> >>> +			dev_err(dev, "bad phdr da 0x%llx mem 0x%llx\n", da,
> >>> +				memsz);
> >>>  			ret =3D -EINVAL;
> >>>  			break;
> >>>  		}
> >>>  =

> >>>  		/* put the segment where the remote processor expects it */
> >>> -		if (phdr->p_filesz)
> >>> -			memcpy(ptr, elf_data + phdr->p_offset, filesz);
> >>> +		if (filesz)
> >>> +			memcpy(ptr, elf_data + offset, filesz);
> >>>  =

> >>>  		/*
> >>>  		 * Zero out remaining memory for this segment.
> >>> @@ -200,24 +224,35 @@ int rproc_elf_load_segments(struct rproc *rproc=
, const
> >>> struct firmware *fw)
> >>>  }
> >>>  EXPORT_SYMBOL(rproc_elf_load_segments);
> >>>  =

> >>> -static struct elf32_shdr *
> >>> -find_table(struct device *dev, struct elf32_hdr *ehdr, size_t fw_siz=
e)
> >>> +static const void *
> >>> +find_table(struct device *dev, const struct firmware *fw)
> >>>  {
> >>> -	struct elf32_shdr *shdr;
> >>> +	const void *shdr, *name_table_shdr;
> >>>  	int i;
> >>>  	const char *name_table;
> >>>  	struct resource_table *table =3D NULL;
> >>> -	const u8 *elf_data =3D (void *)ehdr;
> >>> +	const u8 *elf_data =3D (void *)fw->data;
> >>> +	u8 class =3D fw_elf_get_class(fw);
> >>> +	size_t fw_size =3D fw->size;
> >>> +	const void *ehdr =3D elf_data;
> >>> +	u16 shnum =3D elf_hdr_e_shnum(class, ehdr);
> >>> +	u32 elf_shdr_size =3D elf_size_of_shdr(class);
> >>> +	u16 shstrndx =3D elf_hdr_e_shstrndx(class, ehdr);
> >>>  =

> >>>  	/* look for the resource table and handle it */
> >>> -	shdr =3D (struct elf32_shdr *)(elf_data + ehdr->e_shoff);
> >>> -	name_table =3D elf_data + shdr[ehdr->e_shstrndx].sh_offset;
> >>> -
> >>> -	for (i =3D 0; i < ehdr->e_shnum; i++, shdr++) {
> >>> -		u32 size =3D shdr->sh_size;
> >>> -		u32 offset =3D shdr->sh_offset;
> >>> -
> >>> -		if (strcmp(name_table + shdr->sh_name, ".resource_table"))
> >>> +	/* First, get the section header according to the elf class */
> >>> +	shdr =3D elf_data + elf_hdr_e_shoff(class, ehdr);
> >>> +	/* Compute name table section header entry in shdr array */
> >>> +	name_table_shdr =3D shdr + (shstrndx * elf_shdr_size);
> >>> +	/* Finally, compute the name table section address in elf */
> >>> +	name_table =3D elf_data + elf_shdr_sh_offset(class, name_table_shdr=
);
> >>> +
> >>> +	for (i =3D 0; i < shnum; i++, shdr +=3D elf_shdr_size) {
> >>> +		u64 size =3D elf_shdr_sh_size(class, shdr);
> >>> +		u64 offset =3D elf_shdr_sh_offset(class, shdr);
> >>> +		u32 name =3D elf_shdr_sh_name(class, shdr);
> >>> +
> >>> +		if (strcmp(name_table + name, ".resource_table"))
> >>>  			continue;
> >>>  =

> >>>  		table =3D (struct resource_table *)(elf_data + offset);
> >>> @@ -270,21 +305,21 @@ find_table(struct device *dev, struct elf32_hdr=
 *ehdr,
> >>> size_t fw_size)
> >>>   */
> >>>  int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmw=
are *fw)
> >>>  {
> >>> -	struct elf32_hdr *ehdr;
> >>> -	struct elf32_shdr *shdr;
> >>> +	const void *shdr;
> >>>  	struct device *dev =3D &rproc->dev;
> >>>  	struct resource_table *table =3D NULL;
> >>>  	const u8 *elf_data =3D fw->data;
> >>>  	size_t tablesz;
> >>> +	u8 class =3D fw_elf_get_class(fw);
> >>> +	u64 sh_offset;
> >>>  =

> >>> -	ehdr =3D (struct elf32_hdr *)elf_data;
> >>> -
> >>> -	shdr =3D find_table(dev, ehdr, fw->size);
> >>> +	shdr =3D find_table(dev, fw);
> >>>  	if (!shdr)
> >>>  		return -EINVAL;
> >>>  =

> >>> -	table =3D (struct resource_table *)(elf_data + shdr->sh_offset);
> >>> -	tablesz =3D shdr->sh_size;
> >>> +	sh_offset =3D elf_shdr_sh_offset(class, shdr);
> >>> +	table =3D (struct resource_table *)(elf_data + sh_offset);
> >>> +	tablesz =3D elf_shdr_sh_size(class, shdr);
> >>>  =

> >>>  	/*
> >>>  	 * Create a copy of the resource table. When a virtio device starts
> >>> @@ -317,13 +352,17 @@ EXPORT_SYMBOL(rproc_elf_load_rsc_table);
> >>>  struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc =
*rproc,
> >>>  						       const struct firmware *fw)
> >>>  {
> >>> -	struct elf32_hdr *ehdr =3D (struct elf32_hdr *)fw->data;
> >>> -	struct elf32_shdr *shdr;
> >>> +	const void *shdr;
> >>> +	u64 sh_addr, sh_size;
> >>> +	u8 class =3D fw_elf_get_class(fw);
> >>>  =

> >>> -	shdr =3D find_table(&rproc->dev, ehdr, fw->size);
> >>> +	shdr =3D find_table(&rproc->dev, fw);
> >>>  	if (!shdr)
> >>>  		return NULL;
> >>>  =

> >>> -	return rproc_da_to_va(rproc, shdr->sh_addr, shdr->sh_size);
> >>> +	sh_addr =3D elf_shdr_sh_addr(class, shdr);
> >>> +	sh_size =3D elf_shdr_sh_size(class, shdr);
> >>> +
> >>> +	return rproc_da_to_va(rproc, sh_addr, sh_size);
> >>>  }
> >>>  EXPORT_SYMBOL(rproc_elf_find_loaded_rsc_table);
> >>> diff --git a/drivers/remoteproc/remoteproc_elf_loader.h
> >>> b/drivers/remoteproc/remoteproc_elf_loader.h
> >>> new file mode 100644
> >>> index 000000000000..fac3565734f9
> >>> --- /dev/null
> >>> +++ b/drivers/remoteproc/remoteproc_elf_loader.h
> >>> @@ -0,0 +1,69 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>> +/*
> >>> + * Remote processor elf loader defines
> >>> + *
> >>> + * Copyright (C) 2019 Kalray, Inc.
> >>> + */
> >>> +
> >>> +#ifndef REMOTEPROC_ELF_LOADER_H
> >>> +#define REMOTEPROC_ELF_LOADER_H
> >>> +
> >>> +#include <linux/elf.h>
> >>> +#include <linux/types.h>
> >>> +
> >>> +/**
> >>> + * fw_elf_get_class - Get elf class
> >>> + * @fw: the ELF firmware image
> >>> + *
> >>> + * Note that we use and elf32_hdr to access the class since the star=
t of the
> >>> + * struct is the same for both elf class
> >>> + *
> >>> + * Return: elf class of the firmware
> >>> + */
> >>> +static inline u8 fw_elf_get_class(const struct firmware *fw)
> >>> +{
> >>> +	struct elf32_hdr *ehdr =3D (struct elf32_hdr *)fw->data;
> >>> +
> >>> +	return ehdr->e_ident[EI_CLASS];
> >>> +}
> >>> +
> >>> +#define ELF_GET_FIELD(__s, __field, __type) \
> >>> +static inline __type elf_##__s##_##__field(u8 class, const void *arg=
) \
> >>> +{ \
> >>> +	if (class =3D=3D ELFCLASS32) \
> >>> +		return (__type) ((const struct elf32_##__s *) arg)->__field; \
> >>> +	else \
> >>> +		return (__type) ((const struct elf64_##__s *) arg)->__field; \
> >>> +}
> >>> +
> >>> +ELF_GET_FIELD(hdr, e_entry, u64)
> >>> +ELF_GET_FIELD(hdr, e_phnum, u16)
> >>> +ELF_GET_FIELD(hdr, e_shnum, u16)
> >>> +ELF_GET_FIELD(hdr, e_phoff, u64)
> >>> +ELF_GET_FIELD(hdr, e_shoff, u64)
> >>> +ELF_GET_FIELD(hdr, e_shstrndx, u16)
> >>> +
> >>> +ELF_GET_FIELD(phdr, p_paddr, u64)
> >>> +ELF_GET_FIELD(phdr, p_filesz, u64)
> >>> +ELF_GET_FIELD(phdr, p_memsz, u64)
> >>> +ELF_GET_FIELD(phdr, p_type, u32)
> >>> +ELF_GET_FIELD(phdr, p_offset, u64)
> >>> +
> >>> +ELF_GET_FIELD(shdr, sh_size, u64)
> >>> +ELF_GET_FIELD(shdr, sh_offset, u64)
> >>> +ELF_GET_FIELD(shdr, sh_name, u32)
> >>> +ELF_GET_FIELD(shdr, sh_addr, u64)
> >>> +
> >>> +#define ELF_STRUCT_SIZE(__s) \
> >>> +static inline unsigned long elf_size_of_##__s(u8 class) \
> >>> +{ \
> >>> +	if (class =3D=3D ELFCLASS32)\
> >>> +		return sizeof(struct elf32_##__s); \
> >>> +	else \
> >>> +		return sizeof(struct elf64_##__s); \
> >>> +}
> >>> +
> >>> +ELF_STRUCT_SIZE(shdr)
> >>> +ELF_STRUCT_SIZE(phdr)
> >>> +
> >>> +#endif /* REMOTEPROC_ELF_LOADER_H */
> >>> diff --git a/drivers/remoteproc/remoteproc_internal.h
> >>> b/drivers/remoteproc/remoteproc_internal.h
> >>> index 004867061721..eeb26434220e 100644
> >>> --- a/drivers/remoteproc/remoteproc_internal.h
> >>> +++ b/drivers/remoteproc/remoteproc_internal.h
> >>> @@ -55,7 +55,7 @@ phys_addr_t rproc_va_to_pa(void *cpu_addr);
> >>>  int rproc_trigger_recovery(struct rproc *rproc);
> >>>  =

> >>>  int rproc_elf_sanity_check(struct rproc *rproc, const struct firmwar=
e *fw);
> >>> -u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmwa=
re *fw);
> >>> +u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmwa=
re *fw);
> >>>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmwa=
re *fw);
> >>>  int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmw=
are *fw);
> >>>  struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc =
*rproc,
> >>> diff --git a/drivers/remoteproc/st_remoteproc.c
> >>> b/drivers/remoteproc/st_remoteproc.c
> >>> index ee13d23b43a9..a3268d95a50e 100644
> >>> --- a/drivers/remoteproc/st_remoteproc.c
> >>> +++ b/drivers/remoteproc/st_remoteproc.c
> >>> @@ -190,7 +190,7 @@ static int st_rproc_start(struct rproc *rproc)
> >>>  		}
> >>>  	}
> >>>  =

> >>> -	dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
> >>> +	dev_info(&rproc->dev, "Started from 0x%llx\n", rproc->bootaddr);
> >>>  =

> >>>  	return 0;
> >>>  =

> >>> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> >>> index f84bd5fe0211..82cebca9344c 100644
> >>> --- a/include/linux/remoteproc.h
> >>> +++ b/include/linux/remoteproc.h
> >>> @@ -382,7 +382,7 @@ struct rproc_ops {
> >>>  				struct rproc *rproc, const struct firmware *fw);
> >>>  	int (*load)(struct rproc *rproc, const struct firmware *fw);
> >>>  	int (*sanity_check)(struct rproc *rproc, const struct firmware *fw);
> >>> -	u32 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw=
);
> >>> +	u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw=
);
> >>>  };
> >>>  =

> >>>  /**
> >>> @@ -498,7 +498,7 @@ struct rproc {
> >>>  	int num_traces;
> >>>  	struct list_head carveouts;
> >>>  	struct list_head mappings;
> >>> -	u32 bootaddr;
> >>> +	u64 bootaddr;
> >> =

> >> That will cause problems for rproc_coredump()[1] and fixing it properly
> >> likely means that a 32 or 64 elf should be generated based on the type=
 of image
> >> that was loaded.  This is also true if ->p_vaddr and ->p_paddr (also i=
n the same
> >> function) are to be handled properly.
> >> =

> >> I'm interested in your opinion on this.
> > =

> > Indeed, you are right !
> > =

> > I'm "afraid" I will have to fix that !
> > Most sane thing to do is to dump an elf with the input elf class.
> > I will make a V4 with a patch for that.
> > =

> =

> Actually, this does not seems directly related to elf loading.
> The coredump mecanism dumps segment that have been registered
> using rproc_coredump_add_*_segment and this is not done directly
> by the elf loader.

Correct, but it is fair to assume rpoc_coredump_add_*_segment() is called f=
or
the image that will run on the MCU (otherwiser doing so would be pointless).

> I'm not 100% sure but the coredump elf format is not tied to
> any machine (EM_NONE) and as a special type (ET_CORE) so the elf
> type is probably not relevant adn elf64 would be generic.
 =

That is true, we could generate an elf64 core dump for both 32 and 64 bit M=
CU
image and be done with it.  But that is almost guaranteed to break some user
space that isn't tailored to deal with an elf64.

> If some coredump user could speak for that part, that would be
> nice !
> =

> If needed, then we could add a rproc_coredump_set_format() function
> to specify various parameters (machine, elf type, lsb/msb, etc).
> =


For this specific patchset I don't think you need to cover cases where this=
 much
flexibility is needed (up to now it hasn't been a requiment).

Keeping track of the type of image being loaded in something like
rproc::elfclass and use that information to generate the right elf core in
rproc_coredump() is probably sufficient for the time being.

> Let me know what you think about it.
> =

> Cl=E9ment
> =

> > Thanks,
> > =

> > Cl=E9ment
> > =

> >> =

> >> Thanks,
> >> Mathieu
> >> =

> >> [1].
> >> https://elixir.bootlin.com/linux/latest/source/drivers/remoteproc/remo=
teproc_core.c#L1600
> >> =

> >>>  	struct list_head rvdevs;
> >>>  	struct list_head subdevs;
> >>>  	struct idr notifyids;
> >>> --
> > >> 2.15.0.276.g89ea799

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
