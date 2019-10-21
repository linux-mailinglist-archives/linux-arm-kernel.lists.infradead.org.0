Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6965FDEEF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XoueK8D2P29gWhPMUOCFlI6nz+68fl2F6xO78Px861U=; b=bNK+qMQkmD6FuDkVX0HC9Hz9N
	Q5U+UQKfLTzdhfSzVhybSRFch1dJxYy8d/biVJvd7QW+NYHpLUxl7OtzxiHfMemeCx+CMz6HFhCm0
	Ufl8/nHqiRlEI2C5Ql81zJyVOXqoFie/BXaaJQ4sJk6VWSBB8w0YXrK2YSbaZK4JMZDBJ1N+haRT8
	iMVd62icUtdrtUx7UTeevVwNDiew8BD98q2t/2OMtyCvjkr099uSuN/SyZfTBa9uBgAi5y4l8GwDX
	biBOK/uD6Cc/jtoSSxNUVXT8XZ3J4PT7FabGCvoRjXmqTQQBzmFMxMQEhFODTlcz/j+IqUxdoGtgk
	82qhIErpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYPd-0006qd-8m; Mon, 21 Oct 2019 14:11:57 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYPT-0006q7-28; Mon, 21 Oct 2019 14:11:48 +0000
Received: by mail-il1-x143.google.com with SMTP id p8so2409979ilp.2;
 Mon, 21 Oct 2019 07:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PjrW/5SskD+8sPt6BPZ8XxiZeheU9jVFZxsNh12g9Z8=;
 b=vC+B9XfANqrQFOHw4x3PSo6DxLVq9pgqhRyy8/FMDhb2MwI02TG5iYo66jllEXySKU
 BJivvtSp4QSg+m7DBIsHUQs0taO7Yz9n+SavI00fzj6lWYJ70uj1fDDxFzsRiKLf5Ni6
 HHBBNHbB70SSadMVDuwjX6FSnl1BLPZLZqGlMvoIi5ExnnenbQYpJafEI0rge3xFoUo5
 5yBJGYcrT27h+fHACV4j72yYIruEvw5BZFZFmFY+XgSY+acKlUGWGjXzsFgN5OuruPPt
 DvTVVgdxQruvjtHJYQjSgVZn9GPFMKpOsRN9dTz4pRWRnU9tbcwHuS21oAgWH5kNQkFC
 cp+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PjrW/5SskD+8sPt6BPZ8XxiZeheU9jVFZxsNh12g9Z8=;
 b=GvO4OJjC7sVeJE8dkZktw+jFMOvAvJvAatNA9rcvQNwKc46/7FUnlfkvroCvZXAAZF
 35tFwiNCUbeAypIi0RTg1eNF2wodd+yBlbwW44GTqXidC5emvX8euOYN+Vs+/O7lkO/J
 R3kw5CS7WzVXdLBUgANi6aQP1spK5krIBOCQKq9c0oZZNJgLS4eXuZc8xkbQkv3B+7No
 kvOLn0K4pt2zCG9sP4A1jsuUBDUwiPLAN7664zT/La7Wz/h3mfOnQPu/im52CDyCeLlD
 IltLS4HwbjCqLTyeBElyW77zsJwchG0VEWuZf6a5CwmNIndwSQb9ldhIYMmxTY1frGgr
 7Npw==
X-Gm-Message-State: APjAAAWNKl5cB5otES+42DVCnqjgkpFcd5t4x5JdntYW8VsmUmFdbtG/
 +4mar/0+YPZfpylYGyHdsHA4e/sFyyXX3pScO7U=
X-Google-Smtp-Source: APXvYqxeuHigsAnRBVc/SU84PM+ZFFz5M6oWH5j3i6NUKfOgxMIokeCP8qrGAR4Iyr1erhgn9NBZMGasZgrw6YqhKeQ=
X-Received: by 2002:a92:7906:: with SMTP id u6mr20294645ilc.75.1571667105558; 
 Mon, 21 Oct 2019 07:11:45 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
 <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
 <7hsgo4cgeg.fsf@baylibre.com>
 <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
 <CAFBinCA6ZoeR4m4bhj08HF1DqxY1qB5mygpaQCGbo3d8M+Wr9Q@mail.gmail.com>
 <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
 <1jwode9lba.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgSoK4X3_QbO3YpZRXNTpPJ+zVeid=w93f14Eyk8Dd32EQ@mail.gmail.com>
 <CAFBinCBdwqxA2kLMAA9gtOcXevYK-J4x12odHwpQOAWakgWiEg@mail.gmail.com>
In-Reply-To: <CAFBinCBdwqxA2kLMAA9gtOcXevYK-J4x12odHwpQOAWakgWiEg@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 21 Oct 2019 19:41:34 +0530
Message-ID: <CANAwSgRs2DUXwvhJD5qpXg04qEdP_Nt-wQqRbD2FpY2SWnHpAA@mail.gmail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Content-Type: multipart/mixed; boundary="00000000000088532505956c43d2"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_071147_131475_5C7322DE 
X-CRM114-Status: GOOD (  30.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--00000000000088532505956c43d2
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

On Fri, 18 Oct 2019 at 23:40, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Anand,
>
> On Fri, Oct 18, 2019 at 4:04 PM Anand Moon <linux.amoon@gmail.com> wrote:
> [...]
> > > Next step it to try narrow down the clock causing the issue.
> > > Remove clk_ignore_unused from the command line and add CLK_INGORE_UNUSED
> > > to the flag of some clocks your clock controller (g12a I think) until
> > >
> > > The peripheral clock gates already have this flag (something we should
> > > fix someday) so don't bother looking there.
> > >
> > > Most likely the source of the pwm is getting disabled between the
> > > late_init call and the probe of the PWM module. Since the pwm is already
> > > active (w/o a driver), gating the clock source shuts dowm the power to
> > > the cores.
> > >
> > > Looking a the possible inputs in pwm driver, I'd bet on fdiv4.
> > >
> >
> > I had give this above steps a try but with little success.
> > I am still looking into this much close.
> it's not clear to me if you have only tested with the PWM and/or
> FCLK_DIV4 clocks. can you please describe what you have tested so far?
>
Sorry for delayed response.

I had just looked into clk related to SD_EMMC_A/B/C,
with adding CLK_IGNORE/CRITICAL.
Also looked into clk_summary for eMMC and microSD card,
to identify the root cause, but I failed to move ahead.

> for reference - my way of debugging this in the past was:
> 1. add some printks to clk_disable_unused_subtree (right after the
> clk_core_is_enabled check) to see which clocks are being disabled
> 2. add CLK_IGNORE_UNUSED or CLK_IS_CRITICAL to the clocks which are
> being disabled based on the information from step #1
> 3. (at some point I had a working kernel with lots of clocks with
> CLK_IGNORE_UNUSED/CLK_IS_CRITICAL)
> 4. start dropping the CLK_IGNORE_UNUSED/CLK_IS_CRITICAL flags again
> until you have traced it down to the clocks that are the actual issue
> (so far I always had only one clock which caused issues, but it may be
> multiple)
> 5. investigate (and/or ask on the mailing list, Amlogic developers are
> reading the mails here as well) for the few clocks from step #4
>

Thanks for you valuable suggestion. I have your patch to debug this
[0]  https://patchwork.kernel.org/patch/9725921/mbox/

So from the fist step I could identify that all the clk were getting closed
after some core cpu clk was failing. Here is the log.

step1: [1] https://pastebin.com/p13F9HGG

so I marked these clk as CLK_IGNORE_UNUSED and finally
I made it to boot using microSD card.

After this just I converted these CLK to CLK_IS_CRITICAL
as mostly these are used the CPU clk for now.
Here is boot log successful for as of now.

Finally: [2]  https://pastebin.com/qB6pMyGQ

I know clk maintainer are against marking flags as *CLK_IS_CRITICAL*
But this is just the step to move ahead.

Attach is my local clk and dts patch.Just for testing.
[3] clk_critical.patch

Plz share your thought on this.

> > Well I am not the expert in clk or bus configuration.
> > but after looking into the datasheet of for clk configuration
> > I found some bus are not configured correctly.
> did you find any reason which indicates that the problem is related to a bus?
> the issues I had were due to clocks not being assigned to their
> consumers in .dts - that can be anything (from a bus to something
> different).
>

Yes I feel each core bus should be independent
as each clk PLL controls these bus.

for example datasheet: *6-5 Clock Connections*

What I feel currently missing with bus are
clock gating (enable/disable of features).
clock-controller
reset-controller

Here is the current overview of bus topology
using latest u-boot (dm tree).

[4] https://pastebin.com/MZ25bgiP

Bet Regards
-Anand

--00000000000088532505956c43d2
Content-Type: application/octet-stream; name="clk_critical.patch"
Content-Disposition: attachment; filename="clk_critical.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k20hls1l0>
X-Attachment-Id: f_k20hls1l0

ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1nMTJiLW9kcm9p
ZC1uMi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tZzEyYi1vZHJvaWQt
bjIuZHRzCmluZGV4IDQyZjE1NDA1NzUwYy4uNGY4ZDg5ZjQ3MmEyIDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tZzEyYi1vZHJvaWQtbjIuZHRzCisrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1nMTJiLW9kcm9pZC1uMi5kdHMKQEAgLTU0
LDYgKzU0LDkgQEAKIAkJZ3BpbyA9IDwmZ3Bpb19hbyBHUElPQU9fOCBHUElPX0FDVElWRV9ISUdI
PjsKIAkJZW5hYmxlLWFjdGl2ZS1oaWdoOwogCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCisJCS8q
IEZDODczMS0wOVZGMDVOUlIgKi8KKwkJdmluLXN1cHBseSA9IDwmdmRkYW9fM3YzPjsKIAl9Owog
CiAJdGZfaW86IGdwaW8tcmVndWxhdG9yLXRmX2lvIHsKQEAgLTY4LDYgKzcxLDggQEAKIAogCQlz
dGF0ZXMgPSA8MzMwMDAwMCAwPiwKIAkJCSA8MTgwMDAwMCAxPjsKKwkJLyogUlQ5MTc5R0IgKi8K
KwkJdmluLXN1cHBseSA9IDwmdmNjXzV2PjsKIAl9OwogCiAJZmxhc2hfMXY4OiByZWd1bGF0b3It
Zmxhc2hfMXY4IHsKQEAgLTQyOSw3ICs0MzQsNiBAQAogCWNkLWdwaW9zID0gPCZncGlvIEdQSU9D
XzYgR1BJT19BQ1RJVkVfTE9XPjsKIAl2bW1jLXN1cHBseSA9IDwmdGZsYXNoX3ZkZD47CiAJdnFt
bWMtc3VwcGx5ID0gPCZ0Zl9pbz47Ci0KIH07CiAKIC8qIGVNTUMgKi8KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvY2xrL21lc29uL2cxMmEuYyBiL2RyaXZlcnMvY2xrL21lc29uL2cxMmEuYwppbmRleCBi
M2FmNjFjYzZmYjkuLjgxYzZlMzM2MjFkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvbWVzb24v
ZzEyYS5jCisrKyBiL2RyaXZlcnMvY2xrL21lc29uL2cxMmEuYwpAQCAtMjgzLDYgKzI4Myw4IEBA
IHN0YXRpYyBzdHJ1Y3QgY2xrX2ZpeGVkX2ZhY3RvciBnMTJhX2ZjbGtfZGl2Ml9kaXYgPSB7CiAJ
CS5vcHMgPSAmY2xrX2ZpeGVkX2ZhY3Rvcl9vcHMsCiAJCS5wYXJlbnRfaHdzID0gKGNvbnN0IHN0
cnVjdCBjbGtfaHcgKltdKSB7ICZnMTJhX2ZpeGVkX3BsbC5odyB9LAogCQkubnVtX3BhcmVudHMg
PSAxLAorCQkvKiBBbmFuZCAqLworCQkuZmxhZ3MgPSBDTEtfSVNfQ1JJVElDQUwsCiAJfSwKIH07
CiAKQEAgLTI5OCw2ICszMDAsOCBAQCBzdGF0aWMgc3RydWN0IGNsa19yZWdtYXAgZzEyYV9mY2xr
X2RpdjIgPSB7CiAJCQkmZzEyYV9mY2xrX2RpdjJfZGl2Lmh3CiAJCX0sCiAJCS5udW1fcGFyZW50
cyA9IDEsCisJCS8qIEFuYW5kICovCisJCS5mbGFncyA9IENMS19JU19DUklUSUNBTCwKIAl9LAog
fTsKIApAQCAtMzc1LDcgKzM3OSw3IEBAIHN0YXRpYyBzdHJ1Y3QgY2xrX3JlZ21hcCBnMTJhX2Nw
dV9jbGtfcHJlbXV4MSA9IHsKIAkJfSwKIAkJLm51bV9wYXJlbnRzID0gMywKIAkJLyogVGhpcyBz
dWItdHJlZSBpcyB1c2VkIGEgcGFya2luZyBjbG9jayAqLwotCQkuZmxhZ3MgPSBDTEtfU0VUX1JB
VEVfTk9fUkVQQVJFTlQKKwkJLmZsYWdzID0gQ0xLX1NFVF9SQVRFX05PX1JFUEFSRU5ULAogCX0s
CiB9OwogCkBAIC02MDQsNyArNjA4LDcgQEAgc3RhdGljIHN0cnVjdCBjbGtfcmVnbWFwIGcxMmJf
Y3B1Yl9jbGtfcHJlbXV4MSA9IHsKIAkJfSwKIAkJLm51bV9wYXJlbnRzID0gMywKIAkJLyogVGhp
cyBzdWItdHJlZSBpcyB1c2VkIGEgcGFya2luZyBjbG9jayAqLwotCQkuZmxhZ3MgPSBDTEtfU0VU
X1JBVEVfTk9fUkVQQVJFTlQsCisJCS5mbGFncyA9IENMS19TRVRfUkFURV9OT19SRVBBUkVOVCB8
IENMS19JU19DUklUSUNBTCwKIAl9LAogfTsKIApAQCAtNjIyLDYgKzYyNiw4IEBAIHN0YXRpYyBz
dHJ1Y3QgY2xrX3JlZ21hcCBnMTJiX2NwdWJfY2xrX211eDFfZGl2ID0gewogCQkJJmcxMmJfY3B1
Yl9jbGtfcHJlbXV4MS5odwogCQl9LAogCQkubnVtX3BhcmVudHMgPSAxLAorCQkvKiBBbmFuZCAq
LworCQkuZmxhZ3MgPSBDTEtfSVNfQ1JJVElDQUwsCiAJfSwKIH07CiAKQEAgLTY0MSw3ICs2NDcs
OCBAQCBzdGF0aWMgc3RydWN0IGNsa19yZWdtYXAgZzEyYl9jcHViX2Nsa19wb3N0bXV4MSA9IHsK
IAkJfSwKIAkJLm51bV9wYXJlbnRzID0gMiwKIAkJLyogVGhpcyBzdWItdHJlZSBpcyB1c2VkIGEg
cGFya2luZyBjbG9jayAqLwotCQkuZmxhZ3MgPSBDTEtfU0VUX1JBVEVfTk9fUkVQQVJFTlQsCisJ
CS8qIEFuYW5kICovCisJCS5mbGFncyA9IENMS19TRVRfUkFURV9OT19SRVBBUkVOVCB8IENMS19J
U19DUklUSUNBTCwKIAl9LAogfTsKIApAQCAtNjgxLDcgKzY4OCw4IEBAIHN0YXRpYyBzdHJ1Y3Qg
Y2xrX3JlZ21hcCBnMTJiX2NwdWJfY2xrID0gewogCQkJJmcxMmFfc3lzX3BsbC5odwogCQl9LAog
CQkubnVtX3BhcmVudHMgPSAyLAotCQkuZmxhZ3MgPSBDTEtfU0VUX1JBVEVfUEFSRU5ULAorCQkv
KiBBbmFuZCAqLworCQkuZmxhZ3MgPSBDTEtfU0VUX1JBVEVfUEFSRU5UIHwgQ0xLX0lTX0NSSVRJ
Q0FMLAogCX0sCiB9OwogCkBAIC0xMTUxLDYgKzExNTksOCBAQCBzdGF0aWMgc3RydWN0IGNsa19y
ZWdtYXAgZzEyYl9jcHViX2Nsa19kaXYxNl9lbiA9IHsKIAkJICogVGhpcyBjbG9jayBpcyB1c2Vk
IHRvIGRlYnVnIHRoZSBjcHVfY2xrIHJhbmdlCiAJCSAqIExpbnV4IHNob3VsZCBub3QgY2hhbmdl
IGl0IGF0IHJ1bnRpbWUKIAkJICovCisJCS8qIEFuYW5kICovCisJCS5mbGFncyA9IENMS19JR05P
UkVfVU5VU0VELAogCX0sCiB9OwogCkBAIC0xMTY0LDYgKzExNzQsOCBAQCBzdGF0aWMgc3RydWN0
IGNsa19maXhlZF9mYWN0b3IgZzEyYV9jcHVfY2xrX2RpdjE2ID0gewogCQkJJmcxMmFfY3B1X2Ns
a19kaXYxNl9lbi5odwogCQl9LAogCQkubnVtX3BhcmVudHMgPSAxLAorCQkvKiBBbmFuZCAqLwor
CQkuZmxhZ3MgPSBDTEtfSVNfQ1JJVElDQUwsCiAJfSwKIH07CiAKQEAgLTExNzcsNiArMTE4OSw4
IEBAIHN0YXRpYyBzdHJ1Y3QgY2xrX2ZpeGVkX2ZhY3RvciBnMTJiX2NwdWJfY2xrX2RpdjE2ID0g
ewogCQkJJmcxMmJfY3B1Yl9jbGtfZGl2MTZfZW4uaHcKIAkJfSwKIAkJLm51bV9wYXJlbnRzID0g
MSwKKwkJLyogQW5hbmQgKi8KKwkJLmZsYWdzID0gQ0xLX0lTX0NSSVRJQ0FMLAogCX0sCiB9Owog
CkBAIC0xMzM2LDYgKzEzNTAsOCBAQCBzdGF0aWMgc3RydWN0IGNsa19maXhlZF9mYWN0b3IgZzEy
Yl9jcHViX2Nsa19kaXYyID0gewogCQkJJmcxMmJfY3B1Yl9jbGsuaHcKIAkJfSwKIAkJLm51bV9w
YXJlbnRzID0gMSwKKwkJLyogQW5hbmQgKi8KKwkJLmZsYWdzID0gQ0xLX0lTX0NSSVRJQ0FMLAog
CX0sCiB9OwogCkBAIC0xMzQ5LDYgKzEzNjUsOCBAQCBzdGF0aWMgc3RydWN0IGNsa19maXhlZF9m
YWN0b3IgZzEyYl9jcHViX2Nsa19kaXYzID0gewogCQkJJmcxMmJfY3B1Yl9jbGsuaHcKIAkJfSwK
IAkJLm51bV9wYXJlbnRzID0gMSwKKwkJLyogQW5hbmQgKi8KKwkJLmZsYWdzID0gQ0xLX0lTX0NS
SVRJQ0FMLAogCX0sCiB9OwogCkBAIC0xMzYyLDYgKzEzODAsOCBAQCBzdGF0aWMgc3RydWN0IGNs
a19maXhlZF9mYWN0b3IgZzEyYl9jcHViX2Nsa19kaXY0ID0gewogCQkJJmcxMmJfY3B1Yl9jbGsu
aHcKIAkJfSwKIAkJLm51bV9wYXJlbnRzID0gMSwKKwkJLyogQW5hbmQgKi8KKwkJLmZsYWdzID0g
Q0xLX0lTX0NSSVRJQ0FMLAogCX0sCiB9OwogCkBAIC0xMzc1LDYgKzEzOTUsOCBAQCBzdGF0aWMg
c3RydWN0IGNsa19maXhlZF9mYWN0b3IgZzEyYl9jcHViX2Nsa19kaXY1ID0gewogCQkJJmcxMmJf
Y3B1Yl9jbGsuaHcKIAkJfSwKIAkJLm51bV9wYXJlbnRzID0gMSwKKwkJLyogQW5hbmQgKi8KKwkJ
LmZsYWdzID0gQ0xLX0lTX0NSSVRJQ0FMLAogCX0sCiB9OwogCkBAIC0xMzg4LDYgKzE0MTAsOCBA
QCBzdGF0aWMgc3RydWN0IGNsa19maXhlZF9mYWN0b3IgZzEyYl9jcHViX2Nsa19kaXY2ID0gewog
CQkJJmcxMmJfY3B1Yl9jbGsuaHcKIAkJfSwKIAkJLm51bV9wYXJlbnRzID0gMSwKKwkJLyogQW5h
bmQgKi8KKwkJLmZsYWdzID0gQ0xLX0lTX0NSSVRJQ0FMLAogCX0sCiB9OwogCkBAIC0xNDAxLDYg
KzE0MjUsOCBAQCBzdGF0aWMgc3RydWN0IGNsa19maXhlZF9mYWN0b3IgZzEyYl9jcHViX2Nsa19k
aXY3ID0gewogCQkJJmcxMmJfY3B1Yl9jbGsuaHcKIAkJfSwKIAkJLm51bV9wYXJlbnRzID0gMSwK
KwkJLyogQW5hbmQgKi8KKwkJLmZsYWdzID0gQ0xLX0lTX0NSSVRJQ0FMLAogCX0sCiB9OwogCkBA
IC0xNDE0LDYgKzE0NDAsOCBAQCBzdGF0aWMgc3RydWN0IGNsa19maXhlZF9mYWN0b3IgZzEyYl9j
cHViX2Nsa19kaXY4ID0gewogCQkJJmcxMmJfY3B1Yl9jbGsuaHcKIAkJfSwKIAkJLm51bV9wYXJl
bnRzID0gMSwKKwkJLyogQW5hbmQgKi8KKwkJLmZsYWdzID0gQ0xLX0lTX0NSSVRJQ0FMLAogCX0s
CiB9OwogCkBAIC0xNDM4LDYgKzE0NjYsOCBAQCBzdGF0aWMgc3RydWN0IGNsa19yZWdtYXAgZzEy
Yl9jcHViX2Nsa19hcGJfc2VsID0gewogCQkJJmcxMmJfY3B1Yl9jbGtfZGl2OC5odwogCQl9LAog
CQkubnVtX3BhcmVudHMgPSA3LAorCQkvKiBBbmFuZCAqLworCQkuZmxhZ3MgPSBDTEtfSVNfQ1JJ
VElDQUwsCiAJfSwKIH07CiAKQEAgLTE0NTgsNiArMTQ4OCw4IEBAIHN0YXRpYyBzdHJ1Y3QgY2xr
X3JlZ21hcCBnMTJiX2NwdWJfY2xrX2FwYiA9IHsKIAkJICogVGhpcyBjbG9jayBpcyBzZXQgYnkg
dGhlIFJPTSBtb25pdG9yIGNvZGUsCiAJCSAqIExpbnV4IHNob3VsZCBub3QgY2hhbmdlIGl0IGF0
IHJ1bnRpbWUKIAkJICovCisJCS8qIEFuYW5kICovCisJCS5mbGFncyA9IENMS19JU19DUklUSUNB
TCwKIAl9LAogfTsKIApAQCAtMTQ4MSw2ICsxNTEzLDggQEAgc3RhdGljIHN0cnVjdCBjbGtfcmVn
bWFwIGcxMmJfY3B1Yl9jbGtfYXRiX3NlbCA9IHsKIAkJCSZnMTJiX2NwdWJfY2xrX2RpdjguaHcK
IAkJfSwKIAkJLm51bV9wYXJlbnRzID0gNywKKwkJLyogQW5hbmQgKi8KKwkJLmZsYWdzID0gQ0xL
X0lTX0NSSVRJQ0FMLAogCX0sCiB9OwogCkBAIC0xNTAxLDYgKzE1MzUsOCBAQCBzdGF0aWMgc3Ry
dWN0IGNsa19yZWdtYXAgZzEyYl9jcHViX2Nsa19hdGIgPSB7CiAJCSAqIFRoaXMgY2xvY2sgaXMg
c2V0IGJ5IHRoZSBST00gbW9uaXRvciBjb2RlLAogCQkgKiBMaW51eCBzaG91bGQgbm90IGNoYW5n
ZSBpdCBhdCBydW50aW1lCiAJCSAqLworCQkvKiBBbmFuZCAqLworCQkuZmxhZ3MgPSBDTEtfSVNf
Q1JJVElDQUwsCiAJfSwKIH07CiAKQEAgLTE1MjQsNiArMTU2MCw4IEBAIHN0YXRpYyBzdHJ1Y3Qg
Y2xrX3JlZ21hcCBnMTJiX2NwdWJfY2xrX2F4aV9zZWwgPSB7CiAJCQkmZzEyYl9jcHViX2Nsa19k
aXY4Lmh3CiAJCX0sCiAJCS5udW1fcGFyZW50cyA9IDcsCisJCS8qIEFuYW5kICovCisJCS5mbGFn
cyA9IENMS19JU19DUklUSUNBTCwKIAl9LAogfTsKIApAQCAtMTU0NCw2ICsxNTgyLDggQEAgc3Rh
dGljIHN0cnVjdCBjbGtfcmVnbWFwIGcxMmJfY3B1Yl9jbGtfYXhpID0gewogCQkgKiBUaGlzIGNs
b2NrIGlzIHNldCBieSB0aGUgUk9NIG1vbml0b3IgY29kZSwKIAkJICogTGludXggc2hvdWxkIG5v
dCBjaGFuZ2UgaXQgYXQgcnVudGltZQogCQkgKi8KKwkJLyogQW5hbmQgKi8KKwkJLmZsYWdzID0g
Q0xLX0lTX0NSSVRJQ0FMLAogCX0sCiB9OwogCg==
--00000000000088532505956c43d2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--00000000000088532505956c43d2--

