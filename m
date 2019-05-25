Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EE32A406
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 13:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=in8lLL5338U/PuXsBqAiRmI8KZBaYmMi04J/szN0wWk=; b=PTeGi53WgmgdBJ
	bIcWsU1UtojiJtSnKC1oue2eupVCWX9jYCiMteHCZQaXXMC+juGmufqXxT6cFmULcCZafGOoSKwnC
	y433gBNosbyoGaYyZp2cowTNiiGUtPf2NnwHLVgVdQdxgNdMHEWmJO2yPupq/MCrHE7ki/5kQAnGr
	b3oCVQEz08AQG71aVAmA+1DMTkcDP3uha3uo+/tHcfOPrSYzL8PgxACO0VsN1ai63FpvCMQSKnrfZ
	yPqz4b0OYtvab5ADrziea1codUqd0QLLU2UcNkUQNOFQZNP/E0r5ubcbMTiCjNRkfa6zRhF+m4b7n
	6RRWBzTAb3QCcY2rWJ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUUye-0000eO-Iq; Sat, 25 May 2019 11:36:40 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUUyX-0000dL-94
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 11:36:34 +0000
Received: from [IPv6:2001:983:e9a7:1:6081:f7d7:b93c:24af]
 ([IPv6:2001:983:e9a7:1:6081:f7d7:b93c:24af])
 by smtp-cloud9.xs4all.net with ESMTPA
 id UUyQhPCuZsDWyUUyRhUFdc; Sat, 25 May 2019 13:36:28 +0200
Subject: Re: [PATCH v5 3/4] media: pixfmt: Document the HEVC slice pixel format
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
References: <20190524093635.1832-1-paul.kocialkowski@bootlin.com>
 <20190524093635.1832-4-paul.kocialkowski@bootlin.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <de925df1-e15e-6293-31b5-b046060e7359@xs4all.nl>
Date: Sat, 25 May 2019 13:36:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524093635.1832-4-paul.kocialkowski@bootlin.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfL5ASQGLGKFdBxYetB5w++UJszYGQx9k/wzBFOSR0d1qvZS8Dyyn9JMjmSBnoMDWOPuEkfLPS+B9eJV4AXBrcbrQ8rKdPJD3VlNeP9BgVFDQyJMtVG8e
 NdcszGQdoOq6xbmoeJI5TlASl41wxbKOXnlYhsbP7imNZSHMlmoliT3GGSQg9MzWbMpcNHsUyaQ9i4BlwJKaNq7A5nHlCpNlNvP+EXqSNioz3biSS669EmIg
 CtYfm/AclOe1UeaPKc3/aDioOvAjzrXYYdWKk6xGTSi/QxRiw3b+kjAfMHK802x7mHlUQH3IRoGiceW8C9fkka0e8XB3Ma2cNjQ2+6ocukUDEo/c48AFZx0u
 qLDrUPcgP3ZLXoowScD55gR3K030KQbKnBAxJWhc3Vopfu2x88JLMn/FrW6AQYJrt5k0pMP3cqOIQhdYV0dY9PmaRxzZx6yAw4HGW36FjkWW50Pfo0sVYybv
 D8JJTAVew5NVqf5xUUAy3H6sGsMIm77HSNtGfuUh3lpfilNUxThMdVtoyvSLRFFAZlRsr2c4/PH7hSVMNfvXlqZ0h2RwuqzlgFF9Ec60tjIlszGRFt7ejqWw
 tO/Epet1eDCs9mXuCXFJE/+Fe+sf9i6rppSys54pFSPgcB6Asf0h3cXyPxbH8gvcTtrZ/Iz9JA0p225QJ9ZAf3B55L1PJN+kgYctd3vQqVh1bmIwoeXY82NI
 +nvO2Ff5XT38voye3UdfMdjCdJJbSpJ9N2k0hRshCZvGxSSZGitczTX5aAAwIuepT3tzpFSLpsvMwU2M5P6SpGb/y0pstXOPYBdcS2pf31u50lmdGrj4OOgB
 /1B2HzykKbyzRQAvS1yk2tiAWjBddRcAskMJJ0Zqgc4aRyeEVB1XObgy53gyQQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_043633_480346_09F4FCAB 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Alexandre Courbot <acourbot@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wens@csie.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/24/19 11:36 AM, Paul Kocialkowski wrote:
> Document the current state of the HEVC slice pixel format.
> The format will need to evolve in the future, which is why it is
> not part of the public API.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/uapi/v4l/pixfmt-compressed.rst      | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> index 4b701fc7653e..9d4195723c3e 100644
> --- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> +++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> @@ -143,6 +143,27 @@ Compressed Formats
>        - ``V4L2_PIX_FMT_HEVC``
>        - 'HEVC'
>        - HEVC/H.265 video elementary stream.
> +    * .. _V4L2-PIX-FMT-HEVC-SLICE:
> +
> +      - ``V4L2_PIX_FMT_HEVC_SLICE``
> +      - 'S265'
> +      - HEVC parsed slice data, as extracted from the HEVC bitstream.
> +	This format is adapted for stateless video decoders that implement a
> +	HEVC pipeline (using the :ref:`codec` and :ref:`media-request-api`).

Should be :ref:`mem2mem`.

Regards,

	Hans

> +	Metadata associated with the frame to decode is required to be passed
> +	through the following controls :
> +        * ``V4L2_CID_MPEG_VIDEO_HEVC_SPS``
> +        * ``V4L2_CID_MPEG_VIDEO_HEVC_PPS``
> +        * ``V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS``
> +	See the :ref:`associated Codec Control IDs <v4l2-mpeg-hevc>`.
> +	Buffers associated with this pixel format must contain the appropriate
> +	number of macroblocks to decode a full corresponding frame.
> +
> +	.. note::
> +
> +	   This format is not yet part of the public kernel API and it
> +	   is expected to change.
> +
>      * .. _V4L2-PIX-FMT-FWHT:
>  
>        - ``V4L2_PIX_FMT_FWHT``
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
