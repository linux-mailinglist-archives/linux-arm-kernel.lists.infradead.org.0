Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B36E1D740F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZugO8G8f0UVBlmokvKkl7aOV3GCZaGgzqa1YAzIfGI=; b=aqIAR8zSTr9jre
	drBBvToyq+aOnGQMdyI3J9TaOVZRbQ2fLmDXE4LBCNqC0EH14ga9yPdxxHArXmbq2SdnvOKDpGYVQ
	w9YTNYpF+4LiyydYB/ukoi58UssYnVtn0Rn1dzkjm9TSf8z/tlKMByWI7/1oK+oktypPAFYOU4hnr
	MzQ83/VUadjsr8lbEqVistGhY2wilxz34uWJZE4sUd3EXdzYJUL2D8xuOVoVuKeTO0AsJeT1Rw4CV
	O6HgCjQyW2Yshw8LVhbuiR2MAQuVjK0gxTg/HSATNlYVkG+2HEIMnC1pPt/MsejXWnbNJg8WvDn9V
	e/gvPsIOy8T5v+QN3xxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jac6o-00049O-76; Mon, 18 May 2020 09:30:54 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jac6e-00048S-OO
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:30:46 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MkYLW-1jD8uP0sJy-00m2mx for <linux-arm-kernel@lists.infradead.org>; Mon,
 18 May 2020 11:30:39 +0200
Received: by mail-qk1-f181.google.com with SMTP id g185so9395765qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 02:30:38 -0700 (PDT)
X-Gm-Message-State: AOAM5306oLKkBAyIAz2nv+v9ktZwGUfnqph001FZzRCsfp1etfgKvHkI
 yIBjCXBLF9UQYbijrQtAHU6LCD9I2B46lPEBals=
X-Google-Smtp-Source: ABdhPJxRqWQIj9CjL9GR9FsX53141b4RwqeRLWTo40Ql7QOtN7iteNEnTf9KKJLcV8J+ZKUnKb5gG3rk3PdK7Chz1lE=
X-Received: by 2002:ae9:ed95:: with SMTP id
 c143mr14877840qkg.394.1589794237799; 
 Mon, 18 May 2020 02:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <20200518091222.27467-8-sudeep.holla@arm.com>
In-Reply-To: <20200518091222.27467-8-sudeep.holla@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 18 May 2020 11:30:21 +0200
X-Gmail-Original-Message-ID: <CAK8P3a20R+H6m5GZj2_0w3s-xF+J_qSVrQH8EjyQXe6+9WTYxw@mail.gmail.com>
Message-ID: <CAK8P3a20R+H6m5GZj2_0w3s-xF+J_qSVrQH8EjyQXe6+9WTYxw@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] firmware: smccc: Add ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>
X-Provags-ID: V03:K1:l3a9vQV6z/eckRgnrS+/QJtj2usQU9H0PeKIANhBVS+I72ueaNU
 m1jgpGPF0QLZ5+1eIOTA4WD/afcf0fUnN9V32E04u9ezYGzJmqDmaKQaYbaxhrjmNBPHK71
 7Ccw/Jg5upfl3e52CmBhiE77cnlu+MXK9cj0FflrAC1ANoj3sgA71lMU8ND+kx9BAvqIguw
 n05+Q1wDwGunmwi6P76ZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C5B565Pg0h4=:03/tVMwEejlo6ZkuDnZnGS
 RwG9HEMgcjkwhtZDus8aN9gxi9Qo8l1YuQrdV6Cj7ahMh89HSUHrItxxzgn4ZyuKRuZJqC3T1
 rVDVMUDrMZ36CbFLaDILvKDjs5Y4N8Q/SSaYOScolDetAmqxdyRFpkozqEHr7KybegycBMRi3
 cV0tfZxRSQu0zs72u3taFzr5P1bYDh3X3AdQw9Hno6iltT+yMbj/boiD2/CTDyA0iuMUkZNKv
 RiypOXYU+j77qFEKek02Vb0zFO24rd5SAxPov8FEUI8gV9zOynqRk83TQtUKidTHIMR9eU+up
 R8N9XJPdNpQQt64vuqMalH9PtzguS6V8P30oP3qshvfqbvZxYG7xeYS1IWgxsikshjc1q0+hQ
 e1ZHbAcpRCG+kdoPJ+xK1gG2hQyhapDZytwmXPjIfCtSnCpGzPjSmzfFRgrJXN0d+Ax1gMj8u
 1XIODuYXg4v2U7pYrjvkQ8EuAgxfklx+Ut5yir1zmir4GbmvtMpfPxIYmUubUUi007xJOF2PA
 AxhW42LumrFYH5NSQTlcMb0Drk3Csqkj/ZuOryIsAxwZVMiwXSs+V8jDP/775f7fWSjudjs0V
 t0Q1V+yvyIOSFt6im/xN3XmCzxafidmKI5Ay+M+YuvQald/yZMK11fuTmnEFp/ax+RxuOxvY7
 ogd/63ajtBgsGBiXqDT3Jk0GxF+/U8NtSHL8YNCpavK77RcxAseqDSu9asmZ+4LLq12/uS0Hy
 /NPPmPV1H4T96gW+INjqbl7gmFHnmSe8Wvlkvf4C40lLRo7RWO9N0FnfRlE/dqEsxu8t1d3DH
 tZHv6kiPNyBWXtB/xuK+8xxmFpDQ4wRhTAVEBk04NRxtX+sOB8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_023045_090942_9A0CE84A 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 11:12 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

> +static ssize_t
> +jep106_cont_bank_code_show(struct device *dev, struct device_attribute *attr,
> +                          char *buf)
> +{
> +       return sprintf(buf, "0x%02x\n", JEP106_BANK_CONT_CODE(soc_id_version));
> +}
> +
> +static DEVICE_ATTR_RO(jep106_cont_bank_code);
> +
> +static ssize_t
> +jep106_identification_code_show(struct device *dev,
> +                               struct device_attribute *attr, char *buf)
> +{
> +       return sprintf(buf, "0x%02x\n", JEP106_ID_CODE(soc_id_version));
> +}

I think we should try hard to avoid nonstandard attributes for the soc device.

Did you run into a problem with finding one of the existing attributes
that can be used to hold the fields?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
