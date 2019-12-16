Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A7E121EF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 00:27:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGoSC2khZmWWYT0wmhito9jUIstUS6AwsFv7woQL85Y=; b=inPL5wH4cqaLNR
	9hU2SbmsFUPFe4OaBKBR0HEBKNPc46JctqpFbr9mVz+VrWunPvOQNYW0At2b1YaMdC/LU81a90jTU
	Z2z/htz84wKIjG8Nts/Uxq1qFy1Hdzb51lYrHXUkGRodMbETRJdRhgSSvt9F4PGLEuDaRy5XpP2cY
	Axati+hw0MJXm/Cj4jy48uOgeaUKzW/i5yz1kBetjOjorglX8N3hNNiwLkBGvKnEVA/qH2k4dUbFP
	LNMfxTV9CwGk4U7cpg+SlhI56+DShdHvcfI1r7FJmvqohZV2nkrNNrWIwSgEfbSLjNU3dsY14nBDL
	dga6KMirAmqAgtkpLOAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igzm1-0000r4-F1; Mon, 16 Dec 2019 23:27:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igzls-0000qN-Ry
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 23:27:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id c13so5201088pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 15:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=pP1hagqSYDwwA2YjZ9gfdWx6xDMgnbeyBHGfmn3+DE0=;
 b=MMYzJp6UxQUQNh58RYjrQGcY6a+hdQWcxSmKtC7oHVd0+x7KJpndeE6yPq3xBAl3jZ
 B/MX8003PV+SZ2nwo8AxyMJHjMHWpXKKFZsX3sWY/ZhgsSxWp3VW8rlFk3N5TVHYYYEX
 qpki9caXNC3/QO8osDQ43QRMuA/yh72mDh6umUSu4mOhWTdU8DaM6XUsO20xR7HH/TAY
 lE2AQsIq2ECvmaIM5v3+cWuHGSiTBIqbd/D1GSPw8a4IbTUmHJ1vwbN5KmsKT+zS7PBd
 VmO+ZH5dNK6HKl8B0m1c0D/SeFnNP8WfLnr7i9jiwoQ/Z3YF/c3IFNfjz1CggHZdxXJ0
 rjqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=pP1hagqSYDwwA2YjZ9gfdWx6xDMgnbeyBHGfmn3+DE0=;
 b=FvVIb42vkEocHm9S111riaKx9fcTnRpHPcVUlzddXOXrPSXLMTb71FMVx6lulP9Sme
 QDYOrYagp12EZfdOoKVBWQ6dttf4Yj/+4hOeGQjNQWvXA189x6nE2YRF+9GO4UmJUgW8
 B4uJRQgmsmTnLxb+8ULerJ09euorr6gmsJ2zDRPsrSSSD1gFsXqLDH8u8UHQrdzJE8uZ
 p4GDZwAVLCQIXW2E5Klz7n0D0/eUqOq2S2dl8IMGHnXxmj8c4eHDTrWXseBkTxL5i2eo
 qrxiGy66hzCc5EP4q7e/jb9JMFBXJtnJF2U6zpZZ5reNz6NosMq55PLlJ48dz8OjO5rO
 wArw==
X-Gm-Message-State: APjAAAX2QFgYvO/Vahb5rOiyImMrr6PtTEG3LFfGAdi0t+jOIAzhVxMz
 hg3zw8JSxPE/0MLCUtkjORI=
X-Google-Smtp-Source: APXvYqxGQ8NGtMEivlA2YMXllL8k/BlL9MhGxi6roCjQUTeTt1nWxWnBdxfsHtWDSc0zFy7zNwVsAA==
X-Received: by 2002:a17:90a:bd8f:: with SMTP id
 z15mr2370209pjr.54.1576538842771; 
 Mon, 16 Dec 2019 15:27:22 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id k9sm593648pje.26.2019.12.16.15.27.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Dec 2019 15:27:21 -0800 (PST)
Date: Mon, 16 Dec 2019 15:27:20 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH v11 14/14] hwmon: Add PECI dimmtemp driver
Message-ID: <20191216232720.GA17398@roeck-us.net>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-15-jae.hyun.yoo@linux.intel.com>
 <d75aaad9-ae07-feeb-966a-899ecfe9d4b3@roeck-us.net>
 <5ed9f292-e024-ffda-a1a8-870ba0f05c58@linux.intel.com>
 <20191216212120.GA12089@roeck-us.net>
 <c6ccb0ff-c0b4-86b2-1768-ba63713034a4@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6ccb0ff-c0b4-86b2-1768-ba63713034a4@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_152724_906576_82AE0728 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Randy Dunlap <rdunlap@infradead.org>, Tomer Maimon <tmaimon77@gmail.com>,
 devicetree@vger.kernel.org, Frederic Barrat <fbarrat@linux.vnet.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 Eric Sandeen <sandeen@redhat.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, openbmc@lists.ozlabs.org,
 linux-doc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Joel Stanley <joel@jms.id.au>, "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 David Kershner <david.kershner@unisys.com>, Wu Hao <hao.wu@intel.com>,
 linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Arnd Bergmann <arnd@arndb.de>, Philippe Ombredanne <pombredanne@nexb.com>,
 Johan Hovold <johan@kernel.org>, Tomohiro Kusumi <kusumi.tomohiro@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Stef van Os <stef.van.os@prodrive-technologies.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sagar Dharia <sdharia@codeaurora.org>, linux-arm-kernel@lists.infradead.org,
 Alan Cox <alan@linux.intel.com>, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Stephen Boyd <sboyd@codeaurora.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:17:34PM -0800, Jae Hyun Yoo wrote:
> [...]
> =

> > > > > +static int get_dimm_temp(struct peci_dimmtemp *priv, int dimm_no)
> > > > > +{
> > > > > +=A0=A0=A0 int dimm_order =3D dimm_no % priv->gen_info->dimm_idx_=
max;
> > > > > +=A0=A0=A0 int chan_rank =3D dimm_no / priv->gen_info->dimm_idx_m=
ax;
> > > > > +=A0=A0=A0 struct peci_rd_pci_cfg_local_msg rp_msg;
> > > > > +=A0=A0=A0 u8=A0 cfg_data[4];
> > > > > +=A0=A0=A0 int ret;
> > > > > +
> > > > > +=A0=A0=A0 if (!peci_sensor_need_update(&priv->temp[dimm_no]))
> > > > > +=A0=A0=A0=A0=A0=A0=A0 return 0;
> > > > > +
> > > > > +=A0=A0=A0 ret =3D read_ddr_dimm_temp_config(priv, chan_rank, cfg=
_data);
> > > > > +=A0=A0=A0 if (ret)
> > > > > +=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > > > +
> > > > > +=A0=A0=A0 priv->temp[dimm_no].value =3D cfg_data[dimm_order] * 1=
000;
> > > > > +
> > > > > +=A0=A0=A0 switch (priv->gen_info->model) {
> > > > > +=A0=A0=A0 case INTEL_FAM6_SKYLAKE_X:
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.addr =3D priv->mgr->client->addr;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.bus =3D 2;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 /*
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 10, Function 2: IMC 0 channel =
0 -> rank 0
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 10, Function 6: IMC 0 channel =
1 -> rank 1
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 11, Function 2: IMC 0 channel =
2 -> rank 2
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 12, Function 2: IMC 1 channel =
0 -> rank 3
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 12, Function 6: IMC 1 channel =
1 -> rank 4
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 13, Function 2: IMC 1 channel =
2 -> rank 5
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 */
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.device =3D 10 + chan_rank / 3 * 2 +
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (chan_rank % 3 =
=3D=3D 2 ? 1 : 0);
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.function =3D chan_rank % 3 =3D=3D 1=
 ? 6 : 2;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.reg =3D 0x120 + dimm_order * 4;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.rx_len =3D 4;
> > > > > +
> > > > > +=A0=A0=A0=A0=A0=A0=A0 ret =3D peci_command(priv->mgr->client->ad=
apter,
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PECI_CMD_=
RD_PCI_CFG_LOCAL, &rp_msg);
> > > > > +=A0=A0=A0=A0=A0=A0=A0 if (rp_msg.cc !=3D PECI_DEV_CC_SUCCESS)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D -EAGAIN;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > > > +
> > > > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_max[dimm_no] =3D rp_msg.pci_con=
fig[1] * 1000;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_crit[dimm_no] =3D rp_msg.pci_co=
nfig[2] * 1000;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > > > +=A0=A0=A0 case INTEL_FAM6_SKYLAKE_XD:
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.addr =3D priv->mgr->client->addr;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.bus =3D 2;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 /*
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 10, Function 2: IMC 0 channel =
0 -> rank 0
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 10, Function 6: IMC 0 channel =
1 -> rank 1
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 12, Function 2: IMC 1 channel =
0 -> rank 2
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 12, Function 6: IMC 1 channel =
1 -> rank 3
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 */
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.device =3D 10 + chan_rank / 2 * 2;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.function =3D (chan_rank % 2) ? 6 : =
2;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.reg =3D 0x120 + dimm_order * 4;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.rx_len =3D 4;
> > > > > +
> > > > > +=A0=A0=A0=A0=A0=A0=A0 ret =3D peci_command(priv->mgr->client->ad=
apter,
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PECI_CMD_=
RD_PCI_CFG_LOCAL, &rp_msg);
> > > > > +=A0=A0=A0=A0=A0=A0=A0 if (rp_msg.cc !=3D PECI_DEV_CC_SUCCESS)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D -EAGAIN;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > > > +
> > > > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_max[dimm_no] =3D rp_msg.pci_con=
fig[1] * 1000;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_crit[dimm_no] =3D rp_msg.pci_co=
nfig[2] * 1000;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > > > +=A0=A0=A0 case INTEL_FAM6_HASWELL_X:
> > > > > +=A0=A0=A0 case INTEL_FAM6_BROADWELL_X:
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.addr =3D priv->mgr->client->addr;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.bus =3D 1;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 /*
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 20, Function 0: IMC 0 channel =
0 -> rank 0
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 20, Function 1: IMC 0 channel =
1 -> rank 1
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 21, Function 0: IMC 0 channel =
2 -> rank 2
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 21, Function 1: IMC 0 channel =
3 -> rank 3
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 23, Function 0: IMC 1 channel =
0 -> rank 4
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 23, Function 1: IMC 1 channel =
1 -> rank 5
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 24, Function 0: IMC 1 channel =
2 -> rank 6
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 24, Function 1: IMC 1 channel =
3 -> rank 7
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0 */
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.device =3D 20 + chan_rank / 2 + cha=
n_rank / 4;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.function =3D chan_rank % 2;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.reg =3D 0x120 + dimm_order * 4;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.rx_len =3D 4;
> > > > > +
> > > > > +=A0=A0=A0=A0=A0=A0=A0 ret =3D peci_command(priv->mgr->client->ad=
apter,
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PECI_CMD_=
RD_PCI_CFG_LOCAL, &rp_msg);
> > > > > +=A0=A0=A0=A0=A0=A0=A0 if (rp_msg.cc !=3D PECI_DEV_CC_SUCCESS)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D -EAGAIN;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > > > +
> > > > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_max[dimm_no] =3D rp_msg.pci_con=
fig[1] * 1000;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_crit[dimm_no] =3D rp_msg.pci_co=
nfig[2] * 1000;
> > > > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > > > +=A0=A0=A0 default:
> > > > > +=A0=A0=A0=A0=A0=A0=A0 return -EOPNOTSUPP;
> > > > =

> > > > It looks like the sensors are created even on unsupported platforms,
> > > > which would generate error messages whenever someone tries to read
> > > > the attributes.
> > > > =

> > > > There should be some code early on checking this, and the driver
> > > > should not even instantiate if the CPU model is not supported.
> > > =

> > > Actually, this 'default' case will not be happened because this driver
> > > will be registered only when the CPU model is supported. The CPU model
> > > checking code is in 'intel-peci-client.c' which is [11/14] of this
> > > patch set.
> > > =

> > =

> > That again assumes that both drivers will be modified in sync in the fu=
ture.
> > We can not make that assumption.
> =

> As you said, both drivers must be modified in sync in the future because
> each Intel CPU family uses different way of reading DIMM temperature.
> In case if supported CPU checking code updated without making sync with
> it, this driver will return the error.
> =


... and in that situation the driver should not instantiate in the
first place. Its probe function should return -ENODEV.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
