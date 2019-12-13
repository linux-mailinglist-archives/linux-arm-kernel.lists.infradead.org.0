Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C34211E2C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 12:28:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1i1EkxYXU9ITGCm304ltz1lL4MBVe6x/vMpYFPDrkSo=; b=KMK6cliWhb954xzvdznd79F/p
	bPCx8uizEZaSLiLa3niLw/lzMS+DhZKoX9mQLJqhm5RdAaQuPO8BqK2fmZz5K90pkgCHa/BNQOwSL
	2C8IDNkJ9Qeq8lbhYMTiW24uebSa0O1EK9nwJkyjrhWsSzG8q72OnkfNbJLKFx+4AksZPv6YKl6k6
	+sybUmQfeDdaHtcH+KncJZbvXBt0XG1nZxYeiYnId1EX06VTa8GN9TSqufd9UZWoFjyRfGSmgGF9O
	WjrztxTTWlUwTQN6QiEUmdh95YQENhWG+A2XxyaliWtiX0Ds37gZwVsJhMFujmscMwdk9Ok3hChpR
	r7M6Ryg+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifj7f-0005S2-OY; Fri, 13 Dec 2019 11:28:39 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifj7U-0005GY-37; Fri, 13 Dec 2019 11:28:30 +0000
Received: by mail-il1-x141.google.com with SMTP id n1so1787007ilm.6;
 Fri, 13 Dec 2019 03:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SApHZXxkyc33oQaGK6ky4W1VLNyP7mSMuSzcqHJ/PMo=;
 b=HhDJni7Z8Yno+RYPsfonnh9u7UmeNE60s3l8GDJ5FsG12OyvWMXhrinljTrHbKD4+5
 2xIpEk4Q7aekunme4PXh2CTzJbYFHwJzPzJh13yXzDlZud3PxhDGfbmyel4AAMP50yWg
 HwNS9GiuiS9hnITqC41XdouC/rSjpT/LD2iRHgubIHsbTaxIAJHG7OQKE3zqCw2E+KGs
 ohASwrdD4mWl+9NEypLgSLJCBkyTXr6e9IBxJlxiPTvBVHBS86ps752U9g+ESSuOeUIV
 zdXXirsH0aCVba3F/hRWGAx831heB78XEk+MMfBwXApnBgmLefFw5I1mIiRan+GyhwR1
 +txg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SApHZXxkyc33oQaGK6ky4W1VLNyP7mSMuSzcqHJ/PMo=;
 b=r2OWDtwsz/2duQVqoiX4ZbMM1Y4nHtSnkby0Sq+QWHGHw8LDiFmyaLhHis6mO2wCgz
 7kGI/ZT77x6QHSBX4BjoEmzQx4cxVmHa1WewEGDpyiuq8sp+PQqV90luMa7p08X7Yc2s
 Rgxf4eHb9MZ7iiCAZBM3j2LKz1hh+OwR4Zv14BF0dAZ4zAba/nR4lwGI8ANgqXce9J/4
 pWMtdZrfoWmTGY85a2L2nJWsVJbxIJvfZA8FmxiS6ELNnOwIrfKmqLpZUN4qACXwavne
 QUdu3OCo2GlOWMPnR+TvvaKrPG8ZcYVKO463Rue6Gzkl6m6CIwTfonTBrdGELo4HWCiJ
 ogRQ==
X-Gm-Message-State: APjAAAVu/9A4OZdKzAqBIhbW/cWMXps77JQVgYb6TxfpqK6251MLnqRP
 P5dFpk51FwfPF11/VQBO5BfbMiAcUFrgZvjxfdk=
X-Google-Smtp-Source: APXvYqwg0FT6i21iRj8cES5CzIZe+O41zVwBf4zrhT9VlubUT5C87Ye5zvW1/OTnwkaaVp0JwGsy31bWMWtRA/EdKSQ=
X-Received: by 2002:a92:49d1:: with SMTP id k78mr13607183ilg.6.1576236506638; 
 Fri, 13 Dec 2019 03:28:26 -0800 (PST)
MIME-Version: 1.0
References: <20191101143126.2549-1-linux.amoon@gmail.com>
 <7hfthtrvvv.fsf@baylibre.com>
 <c89791de-0a46-3ce2-b3e2-3640c364cd0f@baylibre.com>
 <CANAwSgQx3LjQe60TGgKyk6B5BD5y1caS2tA+O+GFES7=qCFeKg@mail.gmail.com>
 <7hfthsqcap.fsf@baylibre.com>
 <CAFBinCBfgxXhPKpBLdoq9AimrpaneYFgzgJoDyC-2xhbHmihpA@mail.gmail.com>
 <7hpngvontu.fsf@baylibre.com>
 <4e1339b4-c751-3edc-3a2e-36931ad1c503@baylibre.com>
 <CAFBinCCgKcwXSLxS_CRvz9JZvQo8PcUGm=egBbabVZSrkSc30Q@mail.gmail.com>
In-Reply-To: <CAFBinCCgKcwXSLxS_CRvz9JZvQo8PcUGm=egBbabVZSrkSc30Q@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 13 Dec 2019 16:58:13 +0530
Message-ID: <CANAwSgSFR3kftWLPqyoYfyxdQ5dcp2W7NgRCaFNkMj-xEDY1Kw@mail.gmail.com>
Subject: Re: [RFC-next 0/1] Odroid C2: Enable DVFS for cpu
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Content-Type: multipart/mixed; boundary="0000000000000fd7b0059994291b"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_032828_169137_A3A40562 
X-CRM114-Status: GOOD (  25.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--0000000000000fd7b0059994291b
Content-Type: text/plain; charset="UTF-8"

Hi Martin

On Fri, 13 Dec 2019 at 01:40, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Neil,
>
> On Wed, Dec 11, 2019 at 9:49 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >
> > On 10/12/2019 22:47, Kevin Hilman wrote:
> > > Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
> > >
> > >> On Tue, Dec 10, 2019 at 7:13 PM Kevin Hilman <khilman@baylibre.com> wrote:
> > >>>
> > >>> Anand Moon <linux.amoon@gmail.com> writes:
> > >>>
> > >>>> Hi Neil / Kevin,
> > >>>>
> > >>>> On Tue, 10 Dec 2019 at 14:13, Neil Armstrong <narmstrong@baylibre.com> wrote:
> > >>>>>
> > >>>>> On 09/12/2019 23:12, Kevin Hilman wrote:
> > >>>>>> Anand Moon <linux.amoon@gmail.com> writes:
> > >>>>>>
> > >>>>>>> Some how this patch got lost, so resend this again.
> > >>>>>>>
> > >>>>>>> [0] https://patchwork.kernel.org/patch/11136545/
> > >>>>>>>
> > >>>>>>> This patch enable DVFS on GXBB Odroid C2.
> > >>>>>>>
> > >>>>>>> DVFS has been tested by running the arm64 cpuburn
> > >>>>>>> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> > >>>>>>> PM-QA testing
> > >>>>>>> [2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]
> > >>>>>>>
> > >>>>>>> Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM
> > >>>>>>
> > >>>>>> Have you tested with the Harkernel u-boot?
> > >>>>>>
> > >>>>>> Last I remember, enabling CPUfreq will cause system hangs with the
> > >>>>>> Hardkernel u-boot because of improperly enabled frequencies, so I'm not
> > >>>>>> terribly inclined to merge this patch.
> > >>>>
> > >>>> HK u-boot have many issue with loading the kernel, with load address
> > >>>> *it's really hard to build the kernel for HK u-boot*,
> > >>>> to get the configuration correctly.
> > >>>>
> > >>>> Well I have tested with mainline u-boot with latest ATF .
> > >>>> I would prefer mainline u-boot for all the Amlogic SBC, since
> > >>>> they sync with latest driver changes.
> > >>>
> > >>> Yes, we would all prefer mainline u-boot, but the mainline kernel needs
> > >>> to support the vendor u-boot that is shipping with the boards.  So
> > >>> until Hardkernel (and other vendors) switch to mainline u-boot we do not
> > >>> want to have upstream kernel defaults that will not boot with the vendor
> > >>> u-boot.
> > >>>
> > >>> We can always support these features, but they just cannot be enabled
> > >>> by default.
> > >> (I don't have an Odroid-C2 but I'm curious)
> > >> should Anand submit a patch to mainline u-boot instead?
> > >
> > > It would be in addition to $SUBJECT patch, not instead, I think.
> > >
> > >> the &scpi_clocks node could be enabled at runtime by mainline u-boot
> > >
> > > That would work, but I don't know about u-boot maintainers opinions on
> > > this kind of thing, so let's see what Neil thinks.
> >
> > U-Boot doesn't anything to do with SCPI, SCPI discusses directly with the SCP
> > processor, and the CPU clock is set to 1,56GHz by the BL2 boot stage before
> > U-boot starts.
> >
> > The only viable solution I see now is to find if we could add a DT OPP table
> > only for Odroid-C2 dts to bypass the SCPI OPP table.
> my understanding is that mainline u-boot (with whatever SCP firmware
> it uses) provides the *correct* OPP table

Right now I am not sure how this OPP table is populated.
But I saw the same freq table used in 3.16.x kernel after enable the clk.

> in this case it would be "safe" to have SCPI enabled with mainline u-boot
> @Anand: please correct me if I misunderstood you
>

As per my understanding DVFS OPP frequency table for SCPI firmware set
for 1.536 GHz
somewhere in BL2 as pointed by Neil.

Arm Trusted firmware added new secure SCPI communication with
Cortex-M3 co processor.
[0] https://github.com/ARM-software/arm-trusted-firmware/blob/master/docs/plat/meson-gxbb.rst
[1] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/amlogic/common/aml_scpi.c

ATF generated the *bl1.bin* which is replace the Amlogic's bl1.bin
while preparing
the new u-boot *u-boot.gxbb* image.

> my idea to "enable SCPI with mainline u-boot" is to have u-boot update
> the "status" property of the scpi_clocks node.
> u-boot does something similar with the mac-address property of the
> Ethernet controller for example.
> as result of this users of mainline u-boot would have working CPU
> DVFS, while users of the old vendor u-boot would run at fixed 1.54GHz.
>
>
> Martin

Right now as per my understanding 1.536 GHz max is bit under clocked.

Some time ago on Odroid Forum tried to over clock the cpu to 2GHz.
[3] https://forum.odroid.com/viewtopic.php?f=139&t=18738
So more investigation need to done in this line.

I also tried the same with HardKernel Image, with modifying the boot.ini
I could increase the max DVFS cpu frequency to 1.90 GHz,
This is just proof of concept.

odroid:~# cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies
100000 250000 500000 1000000 1296000 1536000 1656000 1680000 1752000 1896000

I have some minimal stress testing attached are the results for HK
3.16.x kernel.

For now we should not enable this clock.
Until we can possible to check for higher clock frequency to work stable
on all Amlogic S905X SBC.

I like the Neil's approach to use it's own dts OPP table for SCPI protocol.

-Anand

--0000000000000fd7b0059994291b
Content-Type: text/plain; charset="US-ASCII"; name="cpufreq_odroid_c2_3.16.78-48.txt"
Content-Disposition: attachment; filename="cpufreq_odroid_c2_3.16.78-48.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_k4414bbd0>
X-Attachment-Id: f_k4414bbd0

cm9vdEBvZHJvaWQ6fiMgc3lzYmVuY2ggLS10ZXN0PWNwdSAtLXRocmVhZHM9NCAtLWNwdS1tYXgt
cHJpbWU9MjAwMDAwMCBydW4NCldBUk5JTkc6IHRoZSAtLXRlc3Qgb3B0aW9uIGlzIGRlcHJlY2F0
ZWQuIFlvdSBjYW4gcGFzcyBhIHNjcmlwdCBuYW1lIG9yIHBhdGggb24gdGhlIGNvbW1hbmQgbGlu
ZSB3aXRob3V0IGFueSBvcHRpb25zLg0Kc3lzYmVuY2ggMS4wLjExICh1c2luZyBzeXN0ZW0gTHVh
SklUIDIuMS4wLWJldGEzKQ0KDQpSdW5uaW5nIHRoZSB0ZXN0IHdpdGggZm9sbG93aW5nIG9wdGlv
bnM6DQpOdW1iZXIgb2YgdGhyZWFkczogNA0KSW5pdGlhbGl6aW5nIHJhbmRvbSBudW1iZXIgZ2Vu
ZXJhdG9yIGZyb20gY3VycmVudCB0aW1lDQoNCg0KUHJpbWUgbnVtYmVycyBsaW1pdDogMjAwMDAw
MA0KDQpJbml0aWFsaXppbmcgd29ya2VyIHRocmVhZHMuLi4NCg0KVGhyZWFkcyBzdGFydGVkIQ0K
DQpDUFUgc3BlZWQ6DQogICAgZXZlbnRzIHBlciBzZWNvbmQ6ICAgICAwLjA5DQoNCkdlbmVyYWwg
c3RhdGlzdGljczoNCiAgICB0b3RhbCB0aW1lOiAgICAgICAgICAgICAgICAgICAgICAgICAgNDYu
NDc5OXMNCiAgICB0b3RhbCBudW1iZXIgb2YgZXZlbnRzOiAgICAgICAgICAgICAgNA0KDQpMYXRl
bmN5IChtcyk6DQogICAgICAgICBtaW46ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMzEz
MTkuODINCiAgICAgICAgIGF2ZzogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAzODU4My4z
Nw0KICAgICAgICAgbWF4OiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDQ2NDc4LjUzDQog
ICAgICAgICA5NXRoIHBlcmNlbnRpbGU6ICAgICAgICAgICAgICAgICAgNDYxMDMuNTINCiAgICAg
ICAgIHN1bTogICAgICAgICAgICAgICAgICAgICAgICAgICAgIDE1NDMzMy40Nw0KDQpUaHJlYWRz
IGZhaXJuZXNzOg0KICAgIGV2ZW50cyAoYXZnL3N0ZGRldik6ICAgICAgICAgICAxLjAwMDAvMC4w
MA0KICAgIGV4ZWN1dGlvbiB0aW1lIChhdmcvc3RkZGV2KTogICAzOC41ODM0LzYuOTgNCnJvb3RA
b2Ryb2lkOn4jIGNwdWZyZXEtDQpjcHVmcmVxLWFwZXJmICBjcHVmcmVxLWluZm8gICBjcHVmcmVx
LXNldA0Kcm9vdEBvZHJvaWQ6fiMgY3B1ZnJlcS1pbmZvDQpjcHVmcmVxdXRpbHMgMDA4OiBjcHVm
cmVxLWluZm8gKEMpIERvbWluaWsgQnJvZG93c2tpIDIwMDQtMjAwOQ0KUmVwb3J0IGVycm9ycyBh
bmQgYnVncyB0byBjcHVmcmVxQHZnZXIua2VybmVsLm9yZywgcGxlYXNlLg0KYW5hbHl6aW5nIENQ
VSAwOg0KICBkcml2ZXI6IG1lc29uX2NwdWZyZXENCiAgQ1BVcyB3aGljaCBydW4gYXQgdGhlIHNh
bWUgaGFyZHdhcmUgZnJlcXVlbmN5OiAwIDEgMiAzDQogIENQVXMgd2hpY2ggbmVlZCB0byBoYXZl
IHRoZWlyIGZyZXF1ZW5jeSBjb29yZGluYXRlZCBieSBzb2Z0d2FyZTogMCAxIDIgMw0KICBtYXhp
bXVtIHRyYW5zaXRpb24gbGF0ZW5jeTogMjAwIHVzLg0KICBoYXJkd2FyZSBsaW1pdHM6IDEwMC4w
IE1IeiAtIDEuOTAgR0h6DQogIGF2YWlsYWJsZSBmcmVxdWVuY3kgc3RlcHM6IDEwMC4wIE1Ieiwg
MjUwIE1IeiwgNTAwIE1IeiwgMTAwMCBNSHosIDEuMzAgR0h6LCAxLjU0IEdIeiwgMS42NiBHSHos
IDEuNjggR0h6LCAxLjc1IEdIeiwgMS45MCBHSHoNCiAgYXZhaWxhYmxlIGNwdWZyZXEgZ292ZXJu
b3JzOiBob3RwbHVnLCBpbnRlcmFjdGl2ZSwgY29uc2VydmF0aXZlLCBvbmRlbWFuZCwgdXNlcnNw
YWNlLCBwb3dlcnNhdmUsIHBlcmZvcm1hbmNlDQogIGN1cnJlbnQgcG9saWN5OiBmcmVxdWVuY3kg
c2hvdWxkIGJlIHdpdGhpbiAxMDAuMCBNSHogYW5kIDEwMC4wIE1Iei4NCiAgICAgICAgICAgICAg
ICAgIFRoZSBnb3Zlcm5vciAicGVyZm9ybWFuY2UiIG1heSBkZWNpZGUgd2hpY2ggc3BlZWQgdG8g
dXNlDQogICAgICAgICAgICAgICAgICB3aXRoaW4gdGhpcyByYW5nZS4NCiAgY3VycmVudCBDUFUg
ZnJlcXVlbmN5IGlzIDEwMC4wIE1IeiAoYXNzZXJ0ZWQgYnkgY2FsbCB0byBoYXJkd2FyZSkuDQog
IGNwdWZyZXEgc3RhdHM6IDEwMC4wIE1IejoyOC41NCUsIDI1MCBNSHo6MC4wMCUsIDUwMCBNSHo6
MC4wMCUsIDEwMDAgTUh6OjAuMDAlLCAxLjMwIEdIejowLjAwJSwgMS41NCBHSHo6MC4wMCUsIDEu
NjYgR0h6OjAuMDAlLCAxLjY4IEdIejowLjAwJSwgMS43NSBHSHo6MC4wMCUsIDEuOTAgR0h6Ojcx
LjQ2JSAgKDIpDQphbmFseXppbmcgQ1BVIDE6DQogIGRyaXZlcjogbWVzb25fY3B1ZnJlcQ0KICBD
UFVzIHdoaWNoIHJ1biBhdCB0aGUgc2FtZSBoYXJkd2FyZSBmcmVxdWVuY3k6IDAgMSAyIDMNCiAg
Q1BVcyB3aGljaCBuZWVkIHRvIGhhdmUgdGhlaXIgZnJlcXVlbmN5IGNvb3JkaW5hdGVkIGJ5IHNv
ZnR3YXJlOiAwIDEgMiAzDQogIG1heGltdW0gdHJhbnNpdGlvbiBsYXRlbmN5OiAyMDAgdXMuDQog
IGhhcmR3YXJlIGxpbWl0czogMTAwLjAgTUh6IC0gMS45MCBHSHoNCiAgYXZhaWxhYmxlIGZyZXF1
ZW5jeSBzdGVwczogMTAwLjAgTUh6LCAyNTAgTUh6LCA1MDAgTUh6LCAxMDAwIE1IeiwgMS4zMCBH
SHosIDEuNTQgR0h6LCAxLjY2IEdIeiwgMS42OCBHSHosIDEuNzUgR0h6LCAxLjkwIEdIeg0KICBh
dmFpbGFibGUgY3B1ZnJlcSBnb3Zlcm5vcnM6IGhvdHBsdWcsIGludGVyYWN0aXZlLCBjb25zZXJ2
YXRpdmUsIG9uZGVtYW5kLCB1c2Vyc3BhY2UsIHBvd2Vyc2F2ZSwgcGVyZm9ybWFuY2UNCiAgY3Vy
cmVudCBwb2xpY3k6IGZyZXF1ZW5jeSBzaG91bGQgYmUgd2l0aGluIDEwMC4wIE1IeiBhbmQgMTAw
LjAgTUh6Lg0KICAgICAgICAgICAgICAgICAgVGhlIGdvdmVybm9yICJwZXJmb3JtYW5jZSIgbWF5
IGRlY2lkZSB3aGljaCBzcGVlZCB0byB1c2UNCiAgICAgICAgICAgICAgICAgIHdpdGhpbiB0aGlz
IHJhbmdlLg0KICBjdXJyZW50IENQVSBmcmVxdWVuY3kgaXMgMTAwLjAgTUh6IChhc3NlcnRlZCBi
eSBjYWxsIHRvIGhhcmR3YXJlKS4NCiAgY3B1ZnJlcSBzdGF0czogMTAwLjAgTUh6OjI4LjU0JSwg
MjUwIE1IejowLjAwJSwgNTAwIE1IejowLjAwJSwgMTAwMCBNSHo6MC4wMCUsIDEuMzAgR0h6OjAu
MDAlLCAxLjU0IEdIejowLjAwJSwgMS42NiBHSHo6MC4wMCUsIDEuNjggR0h6OjAuMDAlLCAxLjc1
IEdIejowLjAwJSwgMS45MCBHSHo6NzEuNDYlICAoMikNCmFuYWx5emluZyBDUFUgMjoNCiAgZHJp
dmVyOiBtZXNvbl9jcHVmcmVxDQogIENQVXMgd2hpY2ggcnVuIGF0IHRoZSBzYW1lIGhhcmR3YXJl
IGZyZXF1ZW5jeTogMCAxIDIgMw0KICBDUFVzIHdoaWNoIG5lZWQgdG8gaGF2ZSB0aGVpciBmcmVx
dWVuY3kgY29vcmRpbmF0ZWQgYnkgc29mdHdhcmU6IDAgMSAyIDMNCiAgbWF4aW11bSB0cmFuc2l0
aW9uIGxhdGVuY3k6IDIwMCB1cy4NCiAgaGFyZHdhcmUgbGltaXRzOiAxMDAuMCBNSHogLSAxLjkw
IEdIeg0KICBhdmFpbGFibGUgZnJlcXVlbmN5IHN0ZXBzOiAxMDAuMCBNSHosIDI1MCBNSHosIDUw
MCBNSHosIDEwMDAgTUh6LCAxLjMwIEdIeiwgMS41NCBHSHosIDEuNjYgR0h6LCAxLjY4IEdIeiwg
MS43NSBHSHosIDEuOTAgR0h6DQogIGF2YWlsYWJsZSBjcHVmcmVxIGdvdmVybm9yczogaG90cGx1
ZywgaW50ZXJhY3RpdmUsIGNvbnNlcnZhdGl2ZSwgb25kZW1hbmQsIHVzZXJzcGFjZSwgcG93ZXJz
YXZlLCBwZXJmb3JtYW5jZQ0KICBjdXJyZW50IHBvbGljeTogZnJlcXVlbmN5IHNob3VsZCBiZSB3
aXRoaW4gMTAwLjAgTUh6IGFuZCAxMDAuMCBNSHouDQogICAgICAgICAgICAgICAgICBUaGUgZ292
ZXJub3IgInBlcmZvcm1hbmNlIiBtYXkgZGVjaWRlIHdoaWNoIHNwZWVkIHRvIHVzZQ0KICAgICAg
ICAgICAgICAgICAgd2l0aGluIHRoaXMgcmFuZ2UuDQogIGN1cnJlbnQgQ1BVIGZyZXF1ZW5jeSBp
cyAxMDAuMCBNSHogKGFzc2VydGVkIGJ5IGNhbGwgdG8gaGFyZHdhcmUpLg0KICBjcHVmcmVxIHN0
YXRzOiAxMDAuMCBNSHo6MjguNTQlLCAyNTAgTUh6OjAuMDAlLCA1MDAgTUh6OjAuMDAlLCAxMDAw
IE1IejowLjAwJSwgMS4zMCBHSHo6MC4wMCUsIDEuNTQgR0h6OjAuMDAlLCAxLjY2IEdIejowLjAw
JSwgMS42OCBHSHo6MC4wMCUsIDEuNzUgR0h6OjAuMDAlLCAxLjkwIEdIejo3MS40NiUgICgyKQ0K
YW5hbHl6aW5nIENQVSAzOg0KICBkcml2ZXI6IG1lc29uX2NwdWZyZXENCiAgQ1BVcyB3aGljaCBy
dW4gYXQgdGhlIHNhbWUgaGFyZHdhcmUgZnJlcXVlbmN5OiAwIDEgMiAzDQogIENQVXMgd2hpY2gg
bmVlZCB0byBoYXZlIHRoZWlyIGZyZXF1ZW5jeSBjb29yZGluYXRlZCBieSBzb2Z0d2FyZTogMCAx
IDIgMw0KICBtYXhpbXVtIHRyYW5zaXRpb24gbGF0ZW5jeTogMjAwIHVzLg0KICBoYXJkd2FyZSBs
aW1pdHM6IDEwMC4wIE1IeiAtIDEuOTAgR0h6DQogIGF2YWlsYWJsZSBmcmVxdWVuY3kgc3RlcHM6
IDEwMC4wIE1IeiwgMjUwIE1IeiwgNTAwIE1IeiwgMTAwMCBNSHosIDEuMzAgR0h6LCAxLjU0IEdI
eiwgMS42NiBHSHosIDEuNjggR0h6LCAxLjc1IEdIeiwgMS45MCBHSHoNCiAgYXZhaWxhYmxlIGNw
dWZyZXEgZ292ZXJub3JzOiBob3RwbHVnLCBpbnRlcmFjdGl2ZSwgY29uc2VydmF0aXZlLCBvbmRl
bWFuZCwgdXNlcnNwYWNlLCBwb3dlcnNhdmUsIHBlcmZvcm1hbmNlDQogIGN1cnJlbnQgcG9saWN5
OiBmcmVxdWVuY3kgc2hvdWxkIGJlIHdpdGhpbiAxMDAuMCBNSHogYW5kIDEwMC4wIE1Iei4NCiAg
ICAgICAgICAgICAgICAgIFRoZSBnb3Zlcm5vciAicGVyZm9ybWFuY2UiIG1heSBkZWNpZGUgd2hp
Y2ggc3BlZWQgdG8gdXNlDQogICAgICAgICAgICAgICAgICB3aXRoaW4gdGhpcyByYW5nZS4NCiAg
Y3VycmVudCBDUFUgZnJlcXVlbmN5IGlzIDEwMC4wIE1IeiAoYXNzZXJ0ZWQgYnkgY2FsbCB0byBo
YXJkd2FyZSkuDQogIGNwdWZyZXEgc3RhdHM6IDEwMC4wIE1IejoyOC41NSUsIDI1MCBNSHo6MC4w
MCUsIDUwMCBNSHo6MC4wMCUsIDEwMDAgTUh6OjAuMDAlLCAxLjMwIEdIejowLjAwJSwgMS41NCBH
SHo6MC4wMCUsIDEuNjYgR0h6OjAuMDAlLCAxLjY4IEdIejowLjAwJSwgMS43NSBHSHo6MC4wMCUs
IDEuOTAgR0h6OjcxLjQ1JSAgKDIpDQpyb290QG9kcm9pZDp+Iw0K
--0000000000000fd7b0059994291b
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--0000000000000fd7b0059994291b--

