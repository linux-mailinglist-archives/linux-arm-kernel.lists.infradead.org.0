Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131FE132880
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 15:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cSX2EOHe+KCsTVN+/FSxLDFu3xLIJS1eYUmYGKW9ocQ=; b=YeqGkUHh+G4ny5
	CS0NH+aPTV6/DcZpAx+ZqAeClzn4JvIjVPXhAsYIm40f+oIRF9mauN9LmmDLwIkAWvTq5b41V29Io
	k89+aCjM7gpe83mLYyGmpHHW8HD4vINMmBU9UHY2M7rYZTOUWwJZsHdsE6XqNF0Y34fg+7F5XRgTz
	ojoxWRzx6p3iyTjz9T4FBk+qo8Cl+2g2YXMnQWmeMmun38Ol/RztXd9geozcczA3N+FadSS8aDMnR
	z7ptoX6bvcJXOobfGoC2yvCgHJMKEGuCOl6LCrtm9MInwwlKOwDuGUTxA+c9UFciledI1DuTuesdr
	N2nu+Qon5u8trBLuE6VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iopZg-00028q-UC; Tue, 07 Jan 2020 14:11:12 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iopZN-0001xy-PT; Tue, 07 Jan 2020 14:10:56 +0000
Received: from [IPv6:2001:420:44c1:2577:cd88:93ae:ae73:3d6c]
 ([IPv6:2001:420:44c1:2577:cd88:93ae:ae73:3d6c])
 by smtp-cloud7.xs4all.net with ESMTPA
 id opZ8iL4ypN9dwopZCiVgkS; Tue, 07 Jan 2020 15:10:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1578406247; bh=pguEJtr3YXsgCMYRTcoUdJnzwuGYLyzb8Cqh5UoRA1k=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=oxg8jTOdB9aQeOquKcvgu3W5i7CI7h/35bf+7sNccPY2SaPOvJK1cdtUYy9mgYuWb
 cb1EVgsNXPa/+Nrcdd2XRBesn3H0Rdo/67Y3r8BKWjqW3RzFa/mcT4qd7fkTOmPet1
 ZXpgF3h/7sj2pU7VWdmdBtQxA+Uu+JuyR+/j3nNpmsojSW4z8APTh35npprgt7sqGV
 BSfM0latdE7FNgcJh/NvW4Qbk0VWJMilL4DT7tfIPo2FU8A9gn4vrhdmtbogt8Y7N7
 6jhMiQPKHYDUtpRNMJLp0E0JeiPWdao1eohc9c54FkUFklN1OUDn6IJxiZ8Y1XfmVo
 DphCJRqdg5cvw==
Subject: Re: [v6, 3/5] media: videodev2.h: Add new boottime timestamp type
To: Jungo Lin <jungo.lin@mediatek.com>, tfiga@chromium.org,
 laurent.pinchart@ideasonboard.com, matthias.bgg@gmail.com, mchehab@kernel.org
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20191219054930.29513-1-jungo.lin@mediatek.com>
 <20191219054930.29513-4-jungo.lin@mediatek.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <081d7d77-2bf7-0fc2-60ea-8ba8faa5b6af@xs4all.nl>
Date: Tue, 7 Jan 2020 15:10:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191219054930.29513-4-jungo.lin@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfNg4Lmkr4KIIXG1nUIxZodemjtl4ShWQ0W2evICZB55dno8LGxE67kMCEJw9sSghQohHNcrwouG4xpcjlzHo5Am0JLdlwqzGkeDEGKBS8PFZ3G18isZO
 9y68pV3DDBBH2gHfJlefyat2LFY87Yl1ozoyJaC1mUt5IX9Dxp1vIeZdznQ0f5g8fBEuK24VslrsKJkRgK2BgFQTlkO0VPRuEgCMYdJ8H+T5iJgOI7gYQKcl
 S5xjJUmQlbst7HeNE3OuEsXyJD8bJJVxcI6tsIS9zpfz21hmAy9oOAng5W6z2Zbpul54997m4hJhF745kDW9gUi7lIFt9UHabq1MQ0RM+revMjo86GXAx0v8
 Khy+oGhi/oJfbHDf1pbsa1DRSm3rVdPhME/aRxeA9AZyBtMekjUtLUZq/llR2jQrNH56k9V4MkMhhszzJJIVyY7aUyyKBJiDFluwrwihF2Tbtn+vMEB7EDMX
 uXtHwhA+GUKCgvls6GADlmRvrJTw2Z6SCQLrltn+OeuWuWJLUM+zp8O5g+GAYFnRBwzHLRDJcNzzxXh4vAFCMCCL3FbnEuvyoM//hizLbmcoQRO59PbfFMWP
 nqqA73mVkF1j7fLqxTSplzbyK5PA7dNx4k7wPlSHzWggbO4jLD/YGMT6HhnbGxwnhgw0w7cJWj6DdMeoYxhZDmERqAXeW7f0ZfU0CUFjBH3pzBcZxoR5Extv
 tKR4aDsSsVNh+bNhwOkS/soscBxba/BesNT4rnQqpJ+2zdaTZOY1bGw7mCcUck/sLXN6A/IRQr30AQ92Ai7S6RpJHebqWR83WWbxrK76aX09ShGRVIiKkBE8
 al+Ehmq7QTKMTaSTWNVmvC/ooqg2Qc7/PT+7pbEq+dQjkCKhjTLripcwgbI9hsNLvg3ZHhFeUQ3qMxEDYYoSXGeiW/binPzepZQS57EKnXnPfHuYm6XICZt0
 LzDtl3IcIUjRkhdbmtREjqqUa8Ua33Q0EbcK0tNs4d9cuRC78f4aMgini6RZNpV+kUdXCzVd5AaZamenIWNXP8ai8YnItD2Ga7Q52nL6eNvpZvNPDzjWTRIv
 henkShlLsNx/GCZystKzkyNUL5dvf6HVTpo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_061054_363893_4A7A0B6E 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 robh@kernel.org, ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com,
 frankie.chiu@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 ddavenport@chromium.org, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/19/19 6:49 AM, Jungo Lin wrote:
> For Camera AR(Augmented Reality) application requires camera timestamps
> to be reported with CLOCK_BOOTTIME to sync timestamp with other sensor
> sources.
> 
> The boottime timestamp is identical to monotonic timestamp,
> except it also includes any time that the system is suspended.
> 
> Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> ---
> Changes from v6:
>  - No change.
> ---
>  Documentation/media/uapi/v4l/buffer.rst | 11 ++++++++++-
>  include/uapi/linux/videodev2.h          |  2 ++
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/media/uapi/v4l/buffer.rst b/Documentation/media/uapi/v4l/buffer.rst
> index 9149b57728e5..f45bfce7fddd 100644
> --- a/Documentation/media/uapi/v4l/buffer.rst
> +++ b/Documentation/media/uapi/v4l/buffer.rst
> @@ -662,13 +662,22 @@ Buffer Flags
>        - 0x00002000
>        - The buffer timestamp has been taken from the ``CLOCK_MONOTONIC``
>  	clock. To access the same clock outside V4L2, use
> -	:c:func:`clock_gettime`.
> +	:c:func:`clock_gettime` using clock IDs ``CLOCK_MONOTONIC``.

IDs -> ID

>      * .. _`V4L2-BUF-FLAG-TIMESTAMP-COPY`:
>  
>        - ``V4L2_BUF_FLAG_TIMESTAMP_COPY``
>        - 0x00004000
>        - The CAPTURE buffer timestamp has been taken from the corresponding
>  	OUTPUT buffer. This flag applies only to mem2mem devices.
> +    * .. _`V4L2_BUF_FLAG_TIMESTAMP_BOOTIME`:

You mistyped BOOTTIME as BOOTIME in a lot of places. Please check.

> +
> +      - ``V4L2_BUF_FLAG_TIMESTAMP_BOOTIME``
> +      - 0x00008000
> +      - The buffer timestamp has been taken from the ``CLOCK_BOOTTIME``
> +	clock. To access the same clock outside V4L2, use
> +	:c:func:`clock_gettime` using clock IDs ``CLOCK_BOOTTIME``.

IDs -> ID

> +	Identical to CLOCK_MONOTONIC, except it also includes any time that
> +	the system is suspended.
>      * .. _`V4L2-BUF-FLAG-TSTAMP-SRC-MASK`:
>  
>        - ``V4L2_BUF_FLAG_TSTAMP_SRC_MASK``
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 04481c717fee..74ef9472e702 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -1060,6 +1060,8 @@ static inline __u64 v4l2_timeval_to_ns(const struct timeval *tv)
>  #define V4L2_BUF_FLAG_TIMESTAMP_UNKNOWN		0x00000000
>  #define V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC	0x00002000
>  #define V4L2_BUF_FLAG_TIMESTAMP_COPY		0x00004000
> +#define V4L2_BUF_FLAG_TIMESTAMP_BOOTIME		0x00008000

This should be 0x00006000.

(flags & V4L2_BUF_FLAG_TIMESTAMP_MASK) is a value that determines the timestamp
source, so these timestamp defines are values, not bitmasks.

However, I don't like your approach. Whether to use MONOTONIC or BOOTTIME is really
a userspace decision, and locking a driver to one of these two options seems
wrong to me.

Instead add new V4L2_BUF_FLAG_USE_BOOTTIME flag that userspace can set when queuing
the buffer and that indicates that instead of the MONOTONIC timestamp, it should return
the BOOTTIME timestamp. This requires a simple helper function that returns either
ktime_get_ns or ktime_get_boottime_ns based on the vb2_v4l2_buffer flags field.

It's definitely more work (although it can be limited to drivers that use vb2),
but much more useful.

Regards,

	Hans

> +
>  /* Timestamp sources. */
>  #define V4L2_BUF_FLAG_TSTAMP_SRC_MASK		0x00070000
>  #define V4L2_BUF_FLAG_TSTAMP_SRC_EOF		0x00000000
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
